# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.LinkedCasesRequest do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :relatedCaseSystemIds,
    :note
  ]

  @type t :: %__MODULE__{
          :relatedCaseSystemIds => [String.t()],
          :note => String.t() | nil
        }

  def decode(value) do
    value
  end
end
