# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.OngoingScreeningUpdate do
  @moduledoc """
  Respresents an update on the results of the `Case` identified by `caseSystemId` indicating that there are some new or updated results as a result of ongoing screening of this `Case`. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :caseSystemId,
    :updateDate,
    :numberOfNewResults,
    :numberOfUpdatedResults
  ]

  @type t :: %__MODULE__{
          :caseSystemId => String.t(),
          :updateDate => DateTime.t(),
          :numberOfNewResults => integer() | nil,
          :numberOfUpdatedResults => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.OngoingScreeningUpdate do
  def decode(value, _options) do
    value
  end
end
