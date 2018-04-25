import * as React from 'react'

export interface Props {
    children: string | JSX.Element
}

export const Button: React.SFC<Props> = (props: Props) => (
    <div>{props.children}</div>
)

export default Button
