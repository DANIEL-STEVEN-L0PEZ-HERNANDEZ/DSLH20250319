-- Creaci�n de la base de datos (Creaci�n de la base de datos)
CREATE DATABASE Test20250319DB;
GO

USE Test20250319DB;
GO

-- Tabla: Categories (Tabla: Categor�as)
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1), -- ID de categor�a (ID de categor�a)
    CategoryName VARCHAR(255) NOT NULL,    -- Nombre de la categor�a (Nombre de la categor�a)
    Description TEXT                       -- Descripci�n de la categor�a (Descripci�n de la categor�a)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY IDENTITY(1,1),    -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- Pa�s de origen de la marca (Pa�s de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripci�n del producto (Descripci�n del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID), -- ID de la categor�a (ID de la categor�a)
    BrandID INT FOREIGN KEY REFERENCES Brands(BrandID)             -- ID de la marca (ID de la marca)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electr�nico del usuario (Correo electr�nico del usuario)
    PasswordHash CHAR(32) NOT NULL,     -- Hash de la contrase�a del usuario (Hash de la contrase�a del usuario)
    Role VARCHAR(50) NOT NULL                -- Rol del usuario (Rol del usuario)
);
GO