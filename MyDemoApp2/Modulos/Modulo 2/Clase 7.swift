//
//  Clase 7.swift
//  MyDemoApp2
//
//  Created by Santiago Mendoza on 13/11/24.
//

// MARK: SCRIPT
/// Mostrar Button View con texto print("something")
/// Agregar parametro text junto con su Text(text), tirar error de inmutable con let cambiar a var
/// llevar func a una func
/// cambiar text to value
/// Bring NButton and make it UI
/// Add the isValid y volver a la implementacion e intentar y mostrar que no hace nada y arreglar
/// Terminar Button no olvidarse del disabled(!isValid)
/// Reto agregar -1 button

// MARK: INTRO
// En esta clase aprenderas como crear un boton, darle una accion y modificar la ui con la ayuda de los @States.
// MARK: OUTRO
// Ya sabes como actualizar la ui con la implementacion de los Buttons de SwiftUI. Y tambien tienes tu propio boton listo para ser usado en tu app. En la siguiente clase seguiremos viendo maneras de interactuar con los Views, nos vemos ahi.

// MARK: Momentos
// Crear carpeta extras y view ButtonPractica
// Crear Boton("press me") en el body explicar como funciona y agregar un print
// Agregar texto "0" y cambiar el boton a "incrementar"
// Agregar propiedad value entero agregarla al Text e incrementarla dentro de la accion del boton mostrando el error
// Explicar que el error, solucionarlo con un @State
// Crear NButton en carpeta de componentes
// Invocar al Button y usar ui del reto anterior
// Hacer reutilizable el titulo del boton con una propiedad title
// Hacer reutilizable la accion con una propiedad onTap
// Crear la propiedad isValid para cambiar de UI habilitada y deshabilitada
