# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.SmartFilterResponse do
  @moduledoc """
  Retrieved smart filter state on a Case. 
  """

  @derive JSON.Encoder
  defstruct [
    :smartFilter
  ]

  @type t :: %__MODULE__{
          :smartFilter => boolean() | nil
        }

  def decode(value) do
    value
  end
end
