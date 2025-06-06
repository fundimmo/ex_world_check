# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.PepUpdatedDates do
  @moduledoc """
  Represents PEP details' state change dates.
  """

  @derive JSON.Encoder
  defstruct [
    :pepStatusUpdated,
    :pepRolesUpdated
  ]

  @type t :: %__MODULE__{
          :pepStatusUpdated => Date.t() | nil,
          :pepRolesUpdated => Date.t() | nil
        }

  def decode(value) do
    value
  end
end
