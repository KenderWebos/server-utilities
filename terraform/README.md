```
Clonas tu proyecto desde Git.
Corres terraform init para preparar el provider.
Corres terraform plan para ver qué cambiará.
Corres terraform apply para aplicar los cambios.
```

```
terraform-project/
├── main.tf            # entrypoint general opcional
├── variables.tf       # variables globales del proyecto
├── outputs.tf         # outputs del proyecto
├── providers.tf       # providers (SSH, local, cloud, etc.)
├── terraform.tfvars   # valores de variables
├── features/
│   ├── usuarios/
│   │   ├── main.tf       # crea usuarios, grupos, roles
│   │   ├── variables.tf  # usuarios y passwords
│   │   └── outputs.tf    # info de usuarios creados
│   ├── herramientas/
│   │   ├── main.tf       # instala Docker, Java, Git, etc.
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── configuraciones/
│   │   ├── main.tf       # firewall, red, hosts, paquetes
│   │   └── variables.tf
│   └── servicios/
│       ├── main.tf       # setup de servicios: nginx, bases de datos locales
│       └── variables.tf
└── README.md
```