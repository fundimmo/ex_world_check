# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ActionDetail do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :actionId,
    :actionType,
    :comment,
    :endDate,
    :files,
    :publicationType,
    :published,
    :reference,
    :source,
    :startDate,
    :text,
    :title
  ]

  @type t :: %__MODULE__{
          :actionId => String.t() | nil,
          :actionType => String.t(),
          :comment => String.t() | nil,
          :endDate => DateTime.t() | nil,
          :files => [ExWorldCheck.Model.FileMeta.t()] | nil,
          :publicationType => String.t() | nil,
          :published => String.t() | nil,
          :reference => String.t() | nil,
          :source => ExWorldCheck.Model.ProviderSource.t() | nil,
          :startDate => DateTime.t() | nil,
          :text => String.t() | nil,
          :title => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ActionDetail do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:files, :list, ExWorldCheck.Model.FileMeta, options)
    |> deserialize(:source, :struct, ExWorldCheck.Model.ProviderSource, options)
  end
end