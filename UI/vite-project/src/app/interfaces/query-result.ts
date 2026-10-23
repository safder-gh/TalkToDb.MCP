
export enum QueryResultType {
  None = 'None',
  Scalar = 'Scalar',
  List = 'List',
  Grid = 'Grid'
}

export interface QueryResult {
  sqlQuery: string | null;
  resultType: QueryResultType | string;
  result: unknown;
  isSuccess: boolean;
  message: string | null;
  errorMessage: string | null;
  fromUser: boolean;
}
