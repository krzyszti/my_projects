import pygame
import glob
from data import tmx


class Player(pygame.sprite.Sprite):
    def __init__(self, location, *groups):
        super(Player, self).__init__(*groups)
        right = glob.glob('sprites/p1_walk*.png')
        left = glob.glob('sprites/l1_walk*.png')
        right.sort()
        left.sort()
        self.r = []
        self.l = []
        for image in right:
            self.r.append(pygame.image.load(image))
        for image in left:
            self.l.append(pygame.image.load(image))
        self.animation_speed = 10
        self.animation_speed_init = 10
        self.ani_pos = 0
        self.ani_max = len(self.r) - 1
        self.image = self.r[0]
        self.rect = pygame.rect.Rect(location, self.image.get_size())
        self.resting = False
        self.moving = False
        self.is_dead = False
        self.dy = 0
        self.direction = 1

    def update(self, dt, game):
        last = self.rect.copy()
        key = pygame.key.get_pressed()
        if key[pygame.K_LEFT] and key[pygame.K_RIGHT]:
            pass
        else:
            if key[pygame.K_LEFT]:
                self.rect.x -= 350 * dt
                self.direction = -1
                self.animation_speed -= 1
                if self.animation_speed == 0:
                    self.animation_speed = self.animation_speed_init
                    if self.ani_pos >= self.ani_max:
                        self.ani_pos = 0
                    else:
                        self.ani_pos += 1
                    self.image = self.l[self.ani_pos]
            elif key[pygame.K_RIGHT]:
                self.rect.x += 350 * dt
                self.direction = 1
                self.animation_speed -= 1
                if self.animation_speed == 0:
                    self.animation_speed = self.animation_speed_init
                    if self.ani_pos >= self.ani_max:
                        self.ani_pos = 0
                    else:
                        self.ani_pos += 1
                    self.image = self.r[self.ani_pos]

        if self.resting and key[pygame.K_SPACE]:
            self.dy = -770

        self.dy = min(600, self.dy + 40)
        self.rect.y += self.dy * dt

        new = self.rect
        self.resting = False
        for cell in game.tilemap.layers['triggers'].collide(new, 'blockers'):
            blockers = cell["blockers"]
            if 'l' in blockers and last.right <= cell.left < new.right:
                new.right = cell.left - 2
            if 'r' in blockers and last.left >= cell.right > new.left:
                new.left = cell.right + 2
            if 't' in blockers and last.bottom <= cell.top < new.bottom:
                self.resting = True
                new.bottom = cell.top
                self.dy = 0
            if 'b' in blockers and last.top >= cell.bottom > new.top:
                new.top = cell.bottom
                self.dy = 0

        game.tilemap.set_focus(new.x, new.y)


class Game(object):
    def __init__(self):

        self.clock = pygame.time.Clock()
        self.background = pygame.image.load('data/background.png')
        self.tilemap = tmx.load('maps/map1.tmx', screen.get_size())
        self.sprites = tmx.SpriteLayer()
        self.start_cell = self.tilemap.layers['triggers'].find('player')[0]
        self.player = Player((self.start_cell.px, self.start_cell.py), self.sprites)
        self.tilemap.layers.append(self.sprites)
        self.y = 0

    def main(self, scr):

        while True:
            dt = self.clock.tick(60)
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    return
                if event.type == pygame.KEYDOWN and event.key == pygame.K_ESCAPE:
                    return

            self.tilemap.update(dt / 1200., self)
            scr.blit(self.background, (0, 0))
            self.tilemap.draw(scr)
            pygame.display.flip()


if __name__ == '__main__':
    pygame.init()
    screen = pygame.display.set_mode((600, 480))
    Game().main(screen)
