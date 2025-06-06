# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.MediaCheckResultsPaginationResponse do
  @moduledoc """
  Contains references that allows pagination across headline results for a case.  API consumer can use this object to find pagination options available and send the values as part of MediaCheckResultsPagination in pageReference field. 
  """

  @derive JSON.Encoder
  defstruct [
    :current,
    :first,
    :last,
    :next,
    :previous
  ]

  @type t :: %__MODULE__{
          :current => String.t() | nil,
          :first => String.t() | nil,
          :last => String.t() | nil,
          :next => String.t() | nil,
          :previous => String.t() | nil
        }

  def decode(value) do
    value
  end
end
