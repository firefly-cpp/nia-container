<p align="center">
  <img width="200" src="https://raw.githubusercontent.com/firefly-cpp/nia-container/main/.github/imgs/NiaLogos.png">
</p>

---

# nia-container
A container hosts all packages from the Nia{Py, AML, Class, ARM} collection.

## Build & run

### Docker

The image can be built using the following command:

```sh
$ docker build --tag nia .
```

Run the image using

#### Linux $PWD
```sh
docker run -it --name nia -v "$PWD:/var/nia" nia
```

#### Windows {$PWD}
Run the image using Powershell and {$PWD} due to $PWD not being avaliable in command prompt on Windows.
```sh
docker run -it --name nia -v "{$PWD}:/var/nia" nia
```

### Podman

The image can be built using the following command:

```sh
$ podman build --tag nia .
```

Run the image using

#### Linux $PWD
```sh
```

#### Windows ($PWD)
Run the image using Powershell and {$PWD} due to $PWD not being avaliable in command prompt on Windows.
```sh
podman run -it --name nia -v "{$PWD}:/var/nia" nia
```



## Disclaimer

This software is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!
