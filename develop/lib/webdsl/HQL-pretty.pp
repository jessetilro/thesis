[
   QueryUnion               -- _1 KW["union"] _2,
   QueryRule                -- H[_1 _2 _3 _4],
   QueryRule.2:opt          -- _1,
   QueryRule.3:opt          -- _1,
   QueryRule.4:opt          -- _1,
   SelectFrom               -- _1 _2,
   SelectFrom.1:opt         -- _1,
   Select                   -- KW["select"] _1 _2,
   Select.1:opt             -- _1,
   Distinct                 -- KW["distinct"],
   NewExpression            -- KW["new"] _1 KW["("] _2 KW[")"],
   SelectedPropertiesList   -- _1,
   SelectedPropertiesList.1:iter-sep -- _1 KW[","],
   SelectObject             -- KW["object"] KW["("] _1 KW[")"],
   FromClause               -- H  [KW["from"]] _1,
   FromClause.1:iter-sep    -- _1 KW[","],
   FromRangeJoin            -- _1 _2,
   FromRangeJoin.2:opt      -- _1,
   LeftJoin                 -- KW["left"],
   Fetch                    -- KW["fetch"],
   RightJoin                -- KW["right"],
   LeftOuterJoin            -- KW["left"] KW["outer"],
   RightOuterJoin           -- KW["right"] KW["outer"],
   FullJoin                 -- KW["full"],
   InnerJoin                -- KW["inner"],
   FromJoin                 -- _1 KW["join"] _2 _3 _4 _5 _6,
   FromJoin.1:opt           -- _1,
   FromJoin.2:opt           -- KW["fetch"],
   FromJoin.4:opt           -- _1,
   FromJoin.5:opt           -- _1,
   FromJoin.6:opt           -- _1,
   FromClass                -- _1 _2 _3,
   FromClass.2:opt          -- _1,
   FromClass.3:opt          -- _1,
   InClassDeclaration       -- _1 KW["in"] KW["class"] _2,
   InCollection             -- KW["in"] KW["("] _1 KW[")"] _2,
   InCollectionElements     -- _1 KW["in"] KW["elements"] KW["("] _2 KW[")"],
   AsAlias                  -- KW["as"] _1,
   Alias                    -- _1,
   PropertyFetch            -- KW["fetch"] KW["all"] KW["properties"],
   GroupBy                  -- KW["group"] KW["by"] _1 _2,
   GroupBy.1:iter-sep       -- _1 KW[","],
   GroupBy.2:opt            -- _1,
   OrderByClause            -- H  [KW["order"] KW["by"]] _1,
   OrderByClause.1:iter-sep -- _1 KW[","],
   OrderElement             -- _1 _2,
   OrderElement.2:opt       -- _1,
   Ascending                -- KW["asc"],
   Ascending                -- KW["ascending"],
   Descending               -- KW["desc"],
   Descending               -- KW["descending"],
   HavingClause             -- KW["having"] _1,
   WhereClause              -- KW["where"] _1,
   AliasedExpression        -- _1 _2,
   AliasedExpression.2:opt  -- _1,
   QuotedAliasedExpression        -- KW["'"] _1 _2 KW["'"],
   QuotedAliasedExpression.2:opt  -- _1,
   QueryOr                  -- _1 KW["or"] _2,
   QueryAnd                 -- _1 KW["and"] _2,
   QueryNot                 -- KW["not"] _1,
   EQ                       -- _1 KW["="] _2,
   IS                       -- _1 KW["is"] _2,
   NE                       -- _1 KW["!="] _2,
   SQLNE                    -- _1 KW["<>"] _2,
   LT                       -- _1 KW["<"] _2,
   LE                       -- _1 KW["<="] _2,
   GT                       -- _1 KW[">"] _2,
   GE                       -- _1 KW[">="] _2,
   LIKE                     -- _1 KW["like"] _2,
   NOTLIKE                  -- _1 KW["not"] KW["like"] _2,
   In                       -- _1 KW["in"] _2,
   NotIn                    -- _1 KW["not"] KW["in"] _2,
   MemberOf                 -- _1 KW["member"] KW["of"] _2,
   NotMemberOf              -- _1 KW["not"] KW["member"] KW["of"] _2,
   Concat                   -- _1 KW["||"] _2,
   Plus                     -- _1 KW["+"] _2,
   Minus                    -- _1 KW["-"] _2,
   Multiply                 -- _1 KW["*"] _2,
   Divide                   -- _1 KW["/"] _2,
   Modulo                   -- _1 KW["%"] _2,
   UMinus                   -- KW["-"] _1,
   
   %% current_date(), current_time(), and current_timestamp()
   HQLFunCurDate                                -- KW["current_date()"],
   HQLFunCurTime                                -- KW["current_time()"],
   HQLFunCurTimestamp                           -- KW["current_timestamp()"],

   %% second(...), minute(...), hour(...), day(...), month(...), and year(...)
   HQLFunSecond                                 -- KW["second"] KW["("] _1 KW[")"],
   HQLFunMinute                                 -- KW["minute"] KW["("] _1 KW[")"],
   HQLFunHour                                   -- KW["hour"] KW["("] _1 KW[")"],
   HQLFunDay                                    -- KW["day"] KW["("] _1 KW[")"],
   HQLFunMonth                                  -- KW["month"] KW["("] _1 KW[")"],
   HQLFunYear                                   -- KW["year"] KW["("] _1 KW[")"],

   Case                     -- KW["case"] _1 _2 KW["end"],
   Case.1:iter              -- _1,
   Case.2:opt               -- _1,
   IdParam                  -- _1,
   NumParam                 -- _1,
   Sum                      -- KW["sum"] KW["("] _1 KW[")"],
   Elements                 -- KW["elements"] KW["("] _1 KW[")"],
   Indices                  -- KW["indices"] KW["("] _1 KW[")"],
   Paren                    -- KW["("] _1 KW[")"],
   Paren.1:iter-sep         -- _1 KW[","],
   True                     -- KW["true"],
   False                    -- KW["false"],
   Empty                    -- KW["empty"],
   Null                     -- KW["null"],
   Path                     -- H hs=0[_1],
   Path.1:iter-sep          -- _1 KW["."],
   HqlString                   -- H [ _1 ],
   
   CountStar                                              -- KW["count"] KW["("] KW["*"] KW[")"],
   Count                                                  -- KW["count"] KW["("] _1 KW[")"],
   Size                                                   -- KW["size"] KW["("] _1 KW[")"],
   Max                                                    -- KW["max"] KW["("] _1 KW[")"],
   Min                                                    -- KW["min"] KW["("] _1 KW[")"],
   Avg                                                    -- KW["avg"] KW["("] _1 KW[")"],
   SubString                                              -- KW["substring"] KW["("] _1 KW[","] _2 KW[","] _3 KW[")"],
   
   DeleteStatement -- KW["delete"] _1 _2,
   None --
   
]