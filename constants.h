//
//  Header.h
//  Graphics Tests
//
//  Created by DM on 3/3/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#ifndef Header_h
#define Header_h

#define fastest .1
#define faster .2
#define fast .3
#define medium .5
#define slow .7
#define slower .8
#define slowest .9

struct localTransforms {
    CGAffineTransform v1;
    CGAffineTransform v2;
    CGAffineTransform h1;
    CGAffineTransform h2;
    CGAffineTransform b1;
    CGAffineTransform b2;
    CGAffineTransform lA1;
    CGAffineTransform lA2;
    CGAffineTransform rA1;
    CGAffineTransform rA2;
    CGAffineTransform lL1;
    CGAffineTransform lL2;
    CGAffineTransform rL1;
    CGAffineTransform rL2;
};

typedef struct localTransforms localTransforms;

struct timing {
    float d1;
    float d2;
    float d3;
    float d4;
    float d5;
    float d6;
    float d7;
    float d8;
    float d9;
    float d10;
    float d11;
    float d12;
    float d13;
    float d14;
};

typedef struct timing timing;

enum state {
    passive,
    alerted,
    scared,
    angry,
    abducting,
    falling,
    abducted,
    attacking         
};

typedef enum state state;

enum relativeDistance {
//this typdef defines if a character is further from or closer to the left side (origin) of the play area than the UFO.
    further,
    closer
};

typedef enum relativeDistance relativeDistance;

enum specialEffects {
    bullet,
    missile,
    alert,
    fire,
    explosion,
    debris,
    smoke,
    music,
    grenade,
    bubble,
    sparks,
    anger,
    signals
};

typedef enum specialEffects specialEffects;

#endif
