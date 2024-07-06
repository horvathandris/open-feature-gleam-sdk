import gleam/dynamic.{type Dynamic}
import openfeature/evaluation_context.{type EvaluationContext}
import openfeature/provider.{type FeatureProvider}

pub type Client {
  Client(provider: FeatureProvider, metadata: ClientMetadata)
}

pub type ClientMetadata {
  ClientMetadata(domain: String)
}

pub fn get_name(metadata: ClientMetadata) {
  metadata.domain
}

pub fn get_domain(metadata: ClientMetadata) {
  metadata.domain
}

pub fn resolve_bool_evaluation(
  client: Client,
  flag: String,
  default_value: Bool,
  evaluation_context: EvaluationContext,
) {
  client.provider.resolve_bool_evaluation(
    flag,
    default_value,
    evaluation_context,
  )
}

pub fn resolve_string_evaluation(
  client: Client,
  flag: String,
  default_value: String,
  evaluation_context: EvaluationContext,
) {
  client.provider.resolve_string_evaluation(
    flag,
    default_value,
    evaluation_context,
  )
}

pub fn resolve_int_evaluation(
  client: Client,
  flag: String,
  default_value: Int,
  evaluation_context: EvaluationContext,
) {
  client.provider.resolve_int_evaluation(
    flag,
    default_value,
    evaluation_context,
  )
}

pub fn resolve_float_evaluation(
  client: Client,
  flag: String,
  default_value: Float,
  evaluation_context: EvaluationContext,
) {
  client.provider.resolve_float_evaluation(
    flag,
    default_value,
    evaluation_context,
  )
}

pub fn resolve_dynamic_evaluation(
  client: Client,
  flag: String,
  default_value: Dynamic,
  evaluation_context: EvaluationContext,
) {
  client.provider.resolve_dynamic_evaluation(
    flag,
    default_value,
    evaluation_context,
  )
}
