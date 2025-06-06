# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.FieldDefinition do
  @moduledoc """
  Secondary or Custom Field metadata describing the rules for populating the corresponding Field data when creating or updating a Case. Extends [AbstractField](#AbstractField). 
  """

  @derive JSON.Encoder
  defstruct [
    :typeId,
    :fieldValueType,
    :fieldRequired,
    :label,
    :regExp
  ]

  @type t :: %__MODULE__{
          :typeId => String.t(),
          :fieldValueType => ExWorldCheck.Model.FieldValueType.t(),
          :fieldRequired => boolean() | nil,
          :label => String.t(),
          :regExp => String.t() | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:fieldValueType, :struct, ExWorldCheck.Model.FieldValueType)
  end
end
