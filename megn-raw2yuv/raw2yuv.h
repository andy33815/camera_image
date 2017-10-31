#ifndef __RAW_H__ 
#define __RAW_H__ 
 
#define GP_OK 1 
 
typedef enum { 
    BAYER_TILE_RGGB = 0, 
    BAYER_TILE_GRBG = 1, 
    BAYER_TILE_BGGR = 2, 
    BAYER_TILE_GBRG = 3, 
    BAYER_TILE_RGGB_INTERLACED = 4, 
    BAYER_TILE_GRBG_INTERLACED = 5, 
    BAYER_TILE_BGGR_INTERLACED = 6, 
    BAYER_TILE_GBRG_INTERLACED = 7, 
} BayerTile; 
 
int gp_bayer_expand (unsigned char *input, int w, int h, unsigned char *output, 
                     BayerTile tile); 
int gp_bayer_decode (unsigned char *input, int w, int h, unsigned char *output, 
             BayerTile tile); 
int gp_bayer_interpolate (unsigned char *image, int w, int h, BayerTile tile); 

typedef unsigned int MUINT32;
typedef int MINT32;
typedef unsigned char MUINT8;
typedef unsigned short MUINT16;

#endif 