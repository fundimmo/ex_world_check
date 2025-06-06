# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.CaseScreeningRequest do
  @moduledoc """
  Defines Case Screening Request that could be sent for an existing Case.
  """

  @derive JSON.Encoder
  defstruct [
    :screeningMode,
    :caseInfo
  ]

  @type t :: %__MODULE__{
          :screeningMode => String.t() | nil,
          :caseInfo => boolean() | nil
        }

  def decode(value) do
    value
  end
end
