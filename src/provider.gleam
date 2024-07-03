import gleam/option.{type Option}
import evaluation.{
  type BoolEvaluation, type DynamicEvaluation, type FloatEvaluation,
  type IntEvaluation, type StringEvaluation,
}
import metadata.{type Metadata}
import evaluation_context.{type EvaluationContext}

pub type FeatureProvider {
  FeatureProvider(
    initialize: fn(EvaluationContext) -> Nil,
    get_metadata: fn() -> Metadata,
    resolve_bool_evaluation: BoolEvaluation,
    resolve_string_evaluation: StringEvaluation,
    resolve_int_evaluation: IntEvaluation,
    resolve_float_evaluation: FloatEvaluation,
    resolve_dynamic_evaluation: DynamicEvaluation,
  )
}
