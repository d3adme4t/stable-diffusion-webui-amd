## Instructions for use on AMD Navi (RX 6800/6900)

The docker image used to build the container has been changed to use a ROCm image and references to the ROCm version of PyTorch added to the conda environment.yml file.

1. Clone this repo and cd into it
2. Copy the `.env_docker.example` file to `.env_docker`: `cp .env_docker.example .env_docker`
3. Ensure you have docker and docker-compose installed then run `docker-compose up`, this will pull down the source image and then build a new container. This can take 15 min or more as it will download a 1G+ image and then all of the Stable Diffusion models which are several GBs.
4. You should see a message like this once the container is ready: `Running on local URL:  http://localhost:7860/`. You can then broser to the URL to access the web UI.


[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/altryne/sd-webui-colab/blob/main/Stable_Diffusion_WebUi_Altryne.ipynb)

## [Visit sd-webui's Discord Server](https://discord.gg/gyXNe4NySY) [![Discord Server](https://user-images.githubusercontent.com/5977640/190528254-9b5b4423-47ee-4f24-b4f9-fd13fba37518.png)](https://discord.gg/gyXNe4NySY)

## Installation instructions for [Windows](/docs/1.installation.md), [Linux](/docs/1.linux-installation.md)

### Want to ask a question or request a feature?

Come to our [Discord Server](https://discord.gg/gyXNe4NySY) or use [Discussions](https://github.com/sd-webui/stable-diffusion-webui/discussions).

## Documentation

[Documentaion is located here](https://sd-webui.github.io/stable-diffusion-webui/)

## Want to contribute?

Check the [Contribution Guide](CONTRIBUTING.md)

[sd-webui](https://github.com/sd-webui) is
* ![hlky's avatar](https://avatars.githubusercontent.com/u/106811348?s=40&v=4) [hlky](https://github.com/hlky)
* ![ZeroCool940711's avatar](https://avatars.githubusercontent.com/u/5977640?s=40&v=4)[ZeroCool940711](https://github.com/ZeroCool940711)
* ![codedealer's avatar](https://avatars.githubusercontent.com/u/4258136?s=40&v=4)[codedealer](https://github.com/codedealer)



## Gradio

### Features

### Screenshots

## Streamlit

### Features

### Screenshots




--------------

*Stable Diffusion was made possible thanks to a collaboration with [Stability AI](https://stability.ai/) and [Runway](https://runwayml.com/) and builds upon our previous work:*

[**High-Resolution Image Synthesis with Latent Diffusion Models**](https://ommer-lab.com/research/latent-diffusion-models/)<br/>
[Robin Rombach](https://github.com/rromb)\*,
[Andreas Blattmann](https://github.com/ablattmann)\*,
[Dominik Lorenz](https://github.com/qp-qp)\,
[Patrick Esser](https://github.com/pesser),
[Björn Ommer](https://hci.iwr.uni-heidelberg.de/Staff/bommer)<br/>

**CVPR '22 Oral**

which is available on [GitHub](https://github.com/CompVis/latent-diffusion). PDF at [arXiv](https://arxiv.org/abs/2112.10752). Please also visit our [Project page](https://ommer-lab.com/research/latent-diffusion-models/).


[Stable Diffusion](#stable-diffusion-v1) is a latent text-to-image diffusion
model.
Thanks to a generous compute donation from [Stability AI](https://stability.ai/) and support from [LAION](https://laion.ai/), we were able to train a Latent Diffusion Model on 512x512 images from a subset of the [LAION-5B](https://laion.ai/blog/laion-5b/) database. 
Similar to Google's [Imagen](https://arxiv.org/abs/2205.11487), 
this model uses a frozen CLIP ViT-L/14 text encoder to condition the model on text prompts.
With its 860M UNet and 123M text encoder, the model is relatively lightweight and runs on a GPU with at least 10GB VRAM.
See [this section](#stable-diffusion-v1) below and the [model card](https://huggingface.co/CompVis/stable-diffusion).

Stable Diffusion v1 refers to a specific configuration of the model
architecture that uses a downsampling-factor 8 autoencoder with an 860M UNet
and CLIP ViT-L/14 text encoder for the diffusion model. The model was pretrained on 256x256 images and 
then finetuned on 512x512 images.

*Note: Stable Diffusion v1 is a general text-to-image diffusion model and therefore mirrors biases and (mis-)conceptions that are present
in its training data. 
Details on the training procedure and data, as well as the intended use of the model can be found in the corresponding [model card](https://huggingface.co/CompVis/stable-diffusion).

- Our codebase for the diffusion models builds heavily on [OpenAI's ADM codebase](https://github.com/openai/guided-diffusion)
and [https://github.com/lucidrains/denoising-diffusion-pytorch](https://github.com/lucidrains/denoising-diffusion-pytorch). 
Thanks for open-sourcing!

- The implementation of the transformer encoder is from [x-transformers](https://github.com/lucidrains/x-transformers) by [lucidrains](https://github.com/lucidrains?tab=repositories). 


BibTeX

```
@misc{rombach2021highresolution,
      title={High-Resolution Image Synthesis with Latent Diffusion Models}, 
      author={Robin Rombach and Andreas Blattmann and Dominik Lorenz and Patrick Esser and Björn Ommer},
      year={2021},
      eprint={2112.10752},
      archivePrefix={arXiv},
      primaryClass={cs.CV}
}

```


