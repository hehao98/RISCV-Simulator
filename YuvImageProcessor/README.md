# YuvImageProcessor

This is a small program that convert a YUV file into an alpha-blended YUV video clip.

## How to Compile

```
mkdir build
cd build
cmake ..
make
```

## Usage

```
YuvImageProcessor yuv-file -w width -h height -o isa-type output-file
Parameters: yuv-file the path to the input yuv file
            -w width the image width of the yuv file
            -h height the image height of the yuv file
            -o isa output-file [isa-type] can be Int, Basic, MMX, SSE2, AVX
                               [output-file] is the path to output file
```