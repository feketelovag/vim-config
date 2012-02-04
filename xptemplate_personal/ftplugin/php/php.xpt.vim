XPTemplate priority=personal

" ================================= PHP Snippets ===================================

XPT if " if branch
if(`condition^)
{
    `cursor^
}

" ====================================================================

XPT ife " if-else branch
if(`condition^)
{
    `cursor^
}
else
{

}

" ====================================================================

XPT wh " while loop
while(`condition^)
{
    `cursor^
}

" ====================================================================

XPT for " for loop
for($`i^ = 0; $`i^ < `limit^; ++$`i^)
{
    `cursor^
}

" ====================================================================

XPT foreach " foreach loop
foreach($`container^ as $`item^)
{
    `cursor^
}

" ====================================================================

XPT fun " function
/**
 *
 * @param `param^
 * @return `retval^
 */
function `name^($`param^)
{           
	`cursor^
    return $`what^;
}

" ====================================================================

XPT pfun " public function
/**
 *
 * @param `param^
 * @return `retval^
 */
public function `name^($`param^)
{           
	`cursor^
    return $`what^;
}

" ====================================================================

XPT prifun " private function
/**
 *
 * @param `param^
 * @return `retval^
 */
private function `name^($`param^)
{           
	`cursor^
    return $`what^;
}

" ====================================================================

XPT profun " protected function 
/**
 *
 * @param `param^
 * @return `retval^
 */
protected function `name^($`param^)
{           
	`cursor^
    return $`what^;
}

" ====================================================================

XPT class " class 
/**
 * @brief `about^
 */
class `className^
{
    public function __construct(`args^)
	{
        `cursor^
    }
}

" ====================================================================

XPT interface " interface 
/**
 * @brief `about^
 */
interface `interfaceName^
{
    `cursor^
}

" ====================================================================

XPT switch
switch(`^)
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

" ================================= Wrapper ===================================
