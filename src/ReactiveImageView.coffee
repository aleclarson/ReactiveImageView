
{NativeValue} = require "modx/native"
{ImageView} = require "modx/views"
{Component} = require "modx"

type = Component "ReactiveImageView"

type.defineNativeValues ->

  source: @props.source

type.defineListeners -> =>

  @props.source.didSet =>
    try @forceUpdate()

type.defineProps
  style: Style
  source: NativeValue

type.render ->
  return ImageView
    style: @props.style
    source: @source.value

module.exports = type.build()
