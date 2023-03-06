# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.EddRequestAuditDetails do
  @moduledoc """
  Audit details for EDD_REPORT_REQUESTED_CASE action raised when EDD report is requested. Extends [AbstractAuditDetails](#AbstractAuditDetails).
  """

  @derive [Poison.Encoder]
  defstruct [
    :detailsType,
    :entityType,
    :caseSystemId,
    :caseName,
    :caseCountry,
    :gender,
    :dateOfBirth,
    :placeOfBirth,
    :nationality,
    :organisationSecondaryFields,
    :title,
    :firstName,
    :lastName,
    :jobTitle,
    :jobCategory,
    :jobLevel,
    :companyName,
    :email,
    :phone,
    :fax,
    :fullAddress,
    :country,
    :additionalInfo
  ]

  @type t :: %__MODULE__{
          :detailsType => String.t(),
          :entityType => String.t() | nil,
          :caseSystemId => String.t() | nil,
          :caseName => String.t() | nil,
          :caseCountry => String.t() | nil,
          :gender => ExWorldCheck.Model.Gender.t() | nil,
          :dateOfBirth => Date.t() | nil,
          :placeOfBirth => String.t() | nil,
          :nationality => String.t() | nil,
          :organisationSecondaryFields =>
            ExWorldCheck.Model.OrganisationSecondaryFields.t() | nil,
          :title => String.t() | nil,
          :firstName => String.t() | nil,
          :lastName => String.t() | nil,
          :jobTitle => String.t() | nil,
          :jobCategory => String.t() | nil,
          :jobLevel => String.t() | nil,
          :companyName => String.t() | nil,
          :email => String.t() | nil,
          :phone => String.t() | nil,
          :fax => String.t() | nil,
          :fullAddress => String.t() | nil,
          :country => String.t() | nil,
          :additionalInfo => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.EddRequestAuditDetails do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:gender, :struct, ExWorldCheck.Model.Gender, options)
    |> deserialize(:dateOfBirth, :date, nil, options)
    |> deserialize(
      :organisationSecondaryFields,
      :struct,
      ExWorldCheck.Model.OrganisationSecondaryFields,
      options
    )
  end
end
