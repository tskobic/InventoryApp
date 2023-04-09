# Inventory App

Inventory App is a system for tracking inventory at business offices and premises. The solution consists of a Flutter mobile application for employees and a [Strapi](https://strapi.io/) Headless CMS that provides an administrative web interface.

The application enables the display of the current availability of the inventory of business offices and premises. If the inventory resource is available, the user can laon it by scanning a QR code. Depending on the type of resource, the application may also ask for an expected return date. The employee returns the inventory resource by scanning the previously mentioned QR code.

The administrator can perform basic operations on resources (CRUD), grouping, searching and browsing the loaning history.

The system provides two types of resources: individual (e.g. laptop) and group (e.g. pen. where the label is then on the container where the resource is located, e.g. on the pencil case).

For each resource, the location is determined, for example Shelf A, Shelf B, Cabinet C, ... and coordinates. Each of these locations has a special AR marker that serves for the application to display the location of the requested element in space.

The implementation of AR functionality is made possible using [ARwayKit SDK](https://www.arway.ai/).
