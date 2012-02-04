XPTemplate priority=personal

XPTinclude 
	\ _common/personal
	\ _common/inlineComplete
	\ _common/common.*

XPTvar $author       Tibor Kovacs
XPTvar $email        feketelovag@gmail.com

" if () ** {
" else ** {
XPTvar $BRif     '\n'

" } ** else {
XPTvar $BRel     '\n'

" for () ** {
" while () ** {
" do ** {
XPTvar $BRloop   '\n'

" struct name ** {
XPTvar $BRstc    '\n'

" int fun() ** {
" class name ** {
XPTvar $BRfun    '\n'

" int fun ** (
" class name ** (
XPTvar $SPfun      ''

" int fun( ** arg ** )
" if ( ** condition ** )
" for ( ** statement ** )
" [ ** a, b ** ]
" { ** 'k' : 'v' ** }
XPTvar $SParg      ''

" if ** (
" while ** (
" for ** (
XPTvar $SPcmd      ''

" a = a ** + ** 1
" (a, ** b, ** )
" a ** = ** b
XPTvar $SPop       ' '

XPTvar $CommChar    '//'
XPTvar $EOLChar    '' 

XPT fun
/**
 * `description^
 * @param  `what^
 * @return `what^
 */
public `void^ `name^(`arg^)
{
	`cursor^
}

XPT pfun
/**
 * `description^
 * @param  `what^
 * @return `what^
 */
private `void^ `name^(`arg^)
{
	`cursor^
}

XPT prfun
/**
 * `description^
 * @param  `what^
 * @return `what^
 */
protected `void^ `name^(`arg^)
{
	`cursor^
}

XPT class
/**
 * @brief `description^
 */
class `name^
{
	public `name^()
	{
		`cursor^
	}
}

" repeatable switch statement
XPT sww
switch (`^)
{
  `...^      
  case `^:
	`^       
	break;   

  `...^      

  default:
	`^
	break;
}

XPT getset " for a private class member
/**
 * Get `name^
 * @return `type^ the `name^
 */
public `type^ Get`name^()
{
	return this.`name^;
}

/**
 * Set `name^
 * @param `type^ the new `name^
 * @return void
 */
public void Set`name^(`type^ `arg^)
{
	this.`name^ = `arg^;
}
`cursor^
