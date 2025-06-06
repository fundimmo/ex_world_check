# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.Field do
  @moduledoc """
  Holds the value of a Custom Field or a Secondary Field. Valid value type for this field is specified in the corresponding FieldDefinition of CaseTemplateResponse. Extends [AbstractField](#AbstractField). 
  """

  @derive JSON.Encoder
  defstruct [
    :typeId,
    :value,
    :dateTimeValue
  ]

  @type t :: %__MODULE__{
          :typeId => String.t(),
          :value => String.t() | nil,
          :dateTimeValue => DateTime.t() | nil
        }

  def decode(value) do
    value
  end
end
