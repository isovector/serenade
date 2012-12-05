---
status: in-progress
toc: no
...

## Introduction

The wonderful blog [Math ∩ Programming][] has a great primer on face recognition, and in particular, one of the means of doing so: eigenfaces. While faces are not in fact personalities, the main topic of this post is rather abstract, and will likely make more sense as an isomorphism than to be presented by itself. The discussion of eigenfaces is paraphrased directly from Math ∩ Programming, so please do yourself a favor and read the [original article][] - you will not be disappointed.

Say we have a large collection of images of faces and we want to determine whether a picture not in our database is the same person as one *in* our database. If we were able to cluster our database into a configuration space (or "face-space" as the original article calls it), such that similar images are close together and dissimilar faces are far away, we would be able to describe a metric space (that is, a space we can measure to find distances). Presumably if a given image had a small distance to a cluster in our metric space, the two images are of the same face.

## Toplogical Spaces

This is easily visualized. In the archetypical example, our metric space is $\mathbb{R}^3$ - our everyday experience of the world. In R^3^, objects have three coordinates, an X (from left to right), a Y (up and down), and a Z (forwards and backwards). If (ignoring the problem of spherical coordinates) we were to plot the peak of every mountain in the world in an R^3^ graph, it would be trivial to point out mountain ranges, their relative altitudes, and other potentially geographically useful properties.

Another easily-to-imagine metric space is the RGB space, which describes colors. We can make our axes the amount of Red in a color, the amount of Green, and the amount of Blue. Plotting a pumpkin in this graph might have a coordinate of (R:1, G:0.7. B:0), while a grape might be more like (R:0.5, G:0, B:0.5). In this example, our colors are measured from 0 to 1, where 1 means as colorful as possible in the given coordinate. B:1 describes the purest blue imaginable. By looking at clusters in the RGB space we can see which objects are similarly colored. But this isn't the only [color space that we can describe](http://en.wikipedia.org/wiki/Category:Color_space). Depending on what we want to know about a color, it might make more sense to analyze it in a different metric space.

For example, we can instead look at colors in the HSL model instead describes colors in terms of their hue (that is to say, a position in the rainbow. Hue varies from red to yellow to green to blue to red, with everything in between), the saturation (how vivid the hue is), and the lightness (how dark or light the color is). Clustering in HSL more easily allows us to see if an object is well-lit, or if a pair of jeans has faded in the wash. 

[HSL]: Hue, Saturation, Luminence

Despite the fact that RHB and HSL describe the exact same colors, they highlight very different features between a set. This suggests that we can learn different things about objects simply by changing the way we look at them. Choosing the right set of axes can make all of the difference in the world.

Of course, our topological spaces need not have three axes. It is simple enough to postulate a sheet of paper as a metric space (which would have only two axes). Four axes are hard to visualize, but they sure are [beautiful to look at](http://en.wikipedia.org/wiki/3-sphere). As a matter of fact, if you're trying to boggle your inner eye, the number of dimensions in our toplogy doesn't even need to be finite. Try it, but don't hurt yourself. You're going to need all of your cognitive faculties for later.

## Eigenfaces

Getting back to our original facial database, how can we define the dimensions of our topology such that we have the most effective clustering? 

If each picture in the database is greyscale and is $200 \cross 180$ pixels, we can view (and indeed the computer does as well) this image as a vector with thirty-six thousand dimensions (one for each pixel). Technically speaking, we are now done. Although we now have a topology for our problem space, it is neither realizable nor useful. Reasoning in four dimensions is hard enough, let alone thirty-six thousand. Furthermore, only images that are extremely similar to one another will cluster in this scheme, not similar faces as we intended. Clearly more work needs to be done.

What would happen now if we were to get the average face? If we were to combine every face in our database into one blurry mess, what would the result be? It turns out to be just that - a blurry mess, but this is a starting point. If we know what's the average face looks like, if we are to now *remove* this from each individual face, the result will be what's different about that image in particular. If we were now to look at each difference face, they would have high contrast, lots of whites and blacks, and not much in between. The white is the interesting part, as it represents the unique aspects of this image.


