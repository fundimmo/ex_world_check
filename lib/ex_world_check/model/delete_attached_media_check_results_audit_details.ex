# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.DeleteAttachedMediaCheckResultsAuditDetails do
  @moduledoc """
  Audit details which contains details of deleting attached media check results. Extends [AbstractAuditDetails](#AbstractAuditDetails).
  """

  @derive JSON.Encoder
  defstruct [
    :detailsType,
    :articles
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :articles => [ExWorldCheck.Model.Article.t()]
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:articles, :list, ExWorldCheck.Model.Article)
  end
end
