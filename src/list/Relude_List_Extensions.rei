module ListEqExtensions:
  (E : BsAbstract.Interface.EQ) => {
                                     let contains:
                                       (E.t,
                                       Relude_List_Instances.Foldable.t(E.t)) =>
                                       bool;
                                     let indexOf:
                                       (E.t,
                                       Relude_List_Instances.Foldable.t(E.t)) =>
                                       option(int);
                                     let distinct: list(E.t) => list(E.t);
                                     let removeFirst:
                                       (E.t, list(E.t)) => list(E.t);
                                     let removeEach:
                                       (E.t, list(E.t)) => list(E.t);
                                     let eq: (list(E.t), list(E.t)) => bool;
                                   };
module ListOrdExtensions:
  (O : BsAbstract.Interface.ORD) => {
                                      let contains:
                                        (O.t,
                                        Relude_List_Instances.Foldable.t(O.t)) =>
                                        bool;
                                      let indexOf:
                                        (O.t,
                                        Relude_List_Instances.Foldable.t(O.t)) =>
                                        option(int);
                                      let distinct: list(O.t) => list(O.t);
                                      let removeFirst:
                                        (O.t, list(O.t)) => list(O.t);
                                      let removeEach:
                                        (O.t, list(O.t)) => list(O.t);
                                      let eq: (list(O.t), list(O.t)) => bool;
                                      let min:
                                        Relude_List_Instances.Foldable.t(O.t) =>
                                        option(O.t);
                                      let max:
                                        Relude_List_Instances.Foldable.t(O.t) =>
                                        option(O.t);
                                      let sort: list(O.t) => list(O.t);
                                    };
module ListMonoidExtensions:
  (M : BsAbstract.Interface.MONOID) => {
                                         module BsFoldableMonoidExtensions:
                                           {
                                             module FM:
                                               {
                                                 let fold_map:
                                                   ('a => M.t,
                                                   Relude_List_Instances.Foldable.t('a)) =>
                                                   M.t;
                                               };
                                             module I:
                                               {
                                                 let ( <:> ):
                                                   (M.t, M.t) => M.t;
                                               };
                                             type acc =
                                               BsAbstract.Functions.Foldable(Relude_List_Instances.Foldable).Monoid(M).acc = {
                                               init: bool,
                                               acc: M.t,
                                             };
                                             let fold:
                                               Relude_List_Instances.Foldable.t(
                                               M.t) => M.t;
                                             let intercalate:
                                               (~separator: M.t,
                                               Relude_List_Instances.Foldable.t(
                                               M.t)) => M.t;
                                           };
                                         let foldMap:
                                           ('a => M.t,
                                           Relude_List_Instances.Foldable.t('a)) =>
                                           M.t;
                                         let fold:
                                           Relude_List_Instances.Foldable.t(
                                           M.t) => M.t;
                                         let intercalate:
                                           (M.t,
                                           Relude_List_Instances.Foldable.t(
                                           M.t)) => M.t;
                                       };
module String:
  {
    let contains:
      (Relude_String.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_String.Ord.t)) => bool;
    let indexOf:
      (Relude_String.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_String.Ord.t)) => option(int);
    let removeFirst:
      (Relude_String.Ord.t, list(Relude_String.Ord.t)) =>
      list(Relude_String.Ord.t);
    let removeEach:
      (Relude_String.Ord.t, list(Relude_String.Ord.t)) =>
      list(Relude_String.Ord.t);
    let eq: (list(Relude_String.Ord.t), list(Relude_String.Ord.t)) => bool;
    let min:
      Relude_List_Instances.Foldable.t(Relude_String.Ord.t) =>
      option(Relude_String.Ord.t);
    let max:
      Relude_List_Instances.Foldable.t(Relude_String.Ord.t) =>
      option(Relude_String.Ord.t);
    let sort: list(Relude_String.Ord.t) => list(Relude_String.Ord.t);
    module BsFoldableMonoidExtensions:
      {
        module FM:
          {
            let fold_map:
              ('a => Relude_String.Monoid.t,
              Relude_List_Instances.Foldable.t('a)) => Relude_String.Monoid.t;
          };
        module I:
          {
            let ( <:> ):
              (Relude_String.Monoid.t, Relude_String.Monoid.t) =>
              Relude_String.Monoid.t;
          };
        type acc =
          BsAbstract.Functions.Foldable(Relude_List_Instances.Foldable).Monoid(Relude_String.Monoid).acc = {
          init: bool,
          acc: Relude_String.Monoid.t,
        };
        let fold:
          Relude_List_Instances.Foldable.t(Relude_String.Monoid.t) =>
          Relude_String.Monoid.t;
        let intercalate:
          (~separator: Relude_String.Monoid.t,
          Relude_List_Instances.Foldable.t(Relude_String.Monoid.t)) =>
          Relude_String.Monoid.t;
      };
    let foldMap:
      ('a => Relude_String.Monoid.t, Relude_List_Instances.Foldable.t('a)) =>
      Relude_String.Monoid.t;
    let fold:
      Relude_List_Instances.Foldable.t(Relude_String.Monoid.t) =>
      Relude_String.Monoid.t;
    let intercalate:
      (Relude_String.Monoid.t,
      Relude_List_Instances.Foldable.t(Relude_String.Monoid.t)) =>
      Relude_String.Monoid.t;
    let join:
      Relude_List_Instances.Foldable.t(Relude_String.Monoid.t) =>
      Relude_String.Monoid.t;
    let joinWith:
      (Relude_String.Monoid.t,
      Relude_List_Instances.Foldable.t(Relude_String.Monoid.t)) =>
      Relude_String.Monoid.t;
    let distinct: list(string) => list(string);
  };
module Int:
  {
    let contains:
      (Relude_Int.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_Int.Ord.t)) => bool;
    let indexOf:
      (Relude_Int.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_Int.Ord.t)) => option(int);
    let distinct: list(Relude_Int.Ord.t) => list(Relude_Int.Ord.t);
    let removeFirst:
      (Relude_Int.Ord.t, list(Relude_Int.Ord.t)) => list(Relude_Int.Ord.t);
    let removeEach:
      (Relude_Int.Ord.t, list(Relude_Int.Ord.t)) => list(Relude_Int.Ord.t);
    let eq: (list(Relude_Int.Ord.t), list(Relude_Int.Ord.t)) => bool;
    let min:
      Relude_List_Instances.Foldable.t(Relude_Int.Ord.t) =>
      option(Relude_Int.Ord.t);
    let max:
      Relude_List_Instances.Foldable.t(Relude_Int.Ord.t) =>
      option(Relude_Int.Ord.t);
    let sort: list(Relude_Int.Ord.t) => list(Relude_Int.Ord.t);
    let sum: list(int) => int;
    let product: list(int) => int;
  };
module Float:
  {
    let contains:
      (Relude_Float.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_Float.Ord.t)) => bool;
    let indexOf:
      (Relude_Float.Ord.t,
      Relude_List_Instances.Foldable.t(Relude_Float.Ord.t)) => option(int);
    let distinct: list(Relude_Float.Ord.t) => list(Relude_Float.Ord.t);
    let removeFirst:
      (Relude_Float.Ord.t, list(Relude_Float.Ord.t)) =>
      list(Relude_Float.Ord.t);
    let removeEach:
      (Relude_Float.Ord.t, list(Relude_Float.Ord.t)) =>
      list(Relude_Float.Ord.t);
    let eq: (list(Relude_Float.Ord.t), list(Relude_Float.Ord.t)) => bool;
    let min:
      Relude_List_Instances.Foldable.t(Relude_Float.Ord.t) =>
      option(Relude_Float.Ord.t);
    let max:
      Relude_List_Instances.Foldable.t(Relude_Float.Ord.t) =>
      option(Relude_Float.Ord.t);
    let sort: list(Relude_Float.Ord.t) => list(Relude_Float.Ord.t);
    let sum: list(float) => float;
    let product: list(float) => float;
  };
module Option:
  {
    module Traversable = BsAbstract.Functors.ListF.Option.Traversable;
    let traverse: ('a => option('a), list('a)) => option(list('a));
    let sequence: list(option('a)) => option(list('a));
  };
module Result:
  {
    let traverse:
      ('a => Belt.Result.t('b, 'c), list('a)) => Belt.Result.t(list('b), 'c);
    let sequence: list(Belt.Result.t('a, 'b)) => Belt.Result.t(list('a), 'b);
  };
module Validation:
  {
    module Traversable:
      (Errors : BsAbstract.Interface.SEMIGROUP_ANY) => (Error : BsAbstract.Interface.TYPE) => 
        {
          module ValidationE:
            {
              module Functor:
                {
                  type t('a) = Relude_Validation.t('a, Errors.t(Error.t));
                  let map: ('a => 'b, t('a)) => t('b);
                };
              module BsFunctorExtensions:
                {
                  let void: Functor.t('a) => Functor.t(unit);
                  let void_right: ('a, Functor.t('b)) => Functor.t('a);
                  let void_left: (Functor.t('a), 'b) => Functor.t('b);
                  let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
                };
              let map: ('a => 'b, Functor.t('a)) => Functor.t('b);
              let flipMap: (Functor.t('a), 'a => 'b) => Functor.t('b);
              let void: Functor.t('a) => Functor.t(unit);
              let voidRight: ('a, Functor.t('b)) => Functor.t('a);
              let voidLeft: (Functor.t('a), 'b) => Functor.t('b);
              let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
              module Apply:
                {
                  type t('a) = Relude_Validation.t('a, Errors.t(Error.t));
                  let map: ('a => 'b, t('a)) => t('b);
                  let apply: (t('a => 'b), t('a)) => t('b);
                };
              module BsApplyExtensions:
                {
                  module I:
                    {
                      let ( <$> ): ('a => 'b, Apply.t('a)) => Apply.t('b);
                      let ( <#> ): (Apply.t('a), 'a => 'b) => Apply.t('b);
                      let ( <*> ):
                        (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                    };
                  let apply_first: (Apply.t('a), Apply.t('b)) => Apply.t('a);
                  let apply_second: (Apply.t('a), Apply.t('b)) => Apply.t('b);
                  let apply_both:
                    (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                  let lift2:
                    (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) => Apply.t('c);
                  let lift3:
                    (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                    Apply.t('c)) => Apply.t('d);
                  let lift4:
                    (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                    Apply.t('c), Apply.t('d)) => Apply.t('e);
                  let lift5:
                    (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a), Apply.t('b),
                    Apply.t('c), Apply.t('d), Apply.t('e)) => Apply.t('f);
                  module Infix:
                    {
                      let ( <* ): (Apply.t('a), Apply.t('b)) => Apply.t('a);
                      let ( *> ): (Apply.t('a), Apply.t('b)) => Apply.t('b);
                    };
                };
              let apply: (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
              let applyFirst: (Apply.t('a), Apply.t('b)) => Apply.t('a);
              let applySecond: (Apply.t('a), Apply.t('b)) => Apply.t('b);
              let map2:
                (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) => Apply.t('c);
              let map3:
                (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                Apply.t('c)) => Apply.t('d);
              let map4:
                (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                Apply.t('c), Apply.t('d)) => Apply.t('e);
              let map5:
                (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a), Apply.t('b),
                Apply.t('c), Apply.t('d), Apply.t('e)) => Apply.t('f);
              let tuple2: (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
              let tuple3:
                (Apply.t('a), Apply.t('b), Apply.t('c)) =>
                Apply.t(('a, 'b, 'c));
              let tuple4:
                (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d)) =>
                Apply.t(('a, 'b, 'c, 'd));
              let tuple5:
                (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d),
                Apply.t('e)) => Apply.t(('a, 'b, 'c, 'd, 'e));
              module Applicative:
                {
                  type t('a) = Relude_Validation.t('a, Errors.t(Error.t));
                  let map: ('a => 'b, t('a)) => t('b);
                  let apply: (t('a => 'b), t('a)) => t('b);
                  let pure: 'a => t('a);
                };
              module BsApplicativeExtensions:
                {
                  module I:
                    {
                      let ( <$> ):
                        ('a => 'b, Applicative.t('a)) => Applicative.t('b);
                      let ( <#> ):
                        (Applicative.t('a), 'a => 'b) => Applicative.t('b);
                      let ( <*> ):
                        (Applicative.t('a => 'b), Applicative.t('a)) =>
                        Applicative.t('b);
                    };
                  let liftA1:
                    ('a => 'b, Applicative.t('a)) => Applicative.t('b);
                  let when_:
                    (bool, Applicative.t(unit)) => Applicative.t(unit);
                  let unless:
                    (bool, Applicative.t(unit)) => Applicative.t(unit);
                };
              let pure: 'a => Applicative.t('a);
              let liftA1: ('a => 'b, Applicative.t('a)) => Applicative.t('b);
              module Monad:
                {
                  type t('a) = Relude_Validation.t('a, Errors.t(Error.t));
                  let map: ('a => 'b, t('a)) => t('b);
                  let apply: (t('a => 'b), t('a)) => t('b);
                  let pure: 'a => t('a);
                  let flat_map: (t('a), 'a => t('b)) => t('b);
                };
              module BsMonadExtensions:
                {
                  module I:
                    {
                      let ( <$> ): ('a => 'b, Monad.t('a)) => Monad.t('b);
                      let ( <#> ): (Monad.t('a), 'a => 'b) => Monad.t('b);
                      let ( <*> ):
                        (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                      let ( >>= ):
                        (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                      let ( =<< ):
                        ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                      let ( >=> ):
                        ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                        Monad.t('c);
                      let ( <=< ):
                        ('a => Monad.t('b), 'c => Monad.t('a), 'c) =>
                        Monad.t('b);
                    };
                  module A:
                    {
                      module I:
                        {
                          let ( <$> ): ('a => 'b, Monad.t('a)) => Monad.t('b);
                          let ( <#> ): (Monad.t('a), 'a => 'b) => Monad.t('b);
                          let ( <*> ):
                            (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                        };
                      let liftA1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                      let when_: (bool, Monad.t(unit)) => Monad.t(unit);
                      let unless: (bool, Monad.t(unit)) => Monad.t(unit);
                    };
                  let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                  let compose_kliesli:
                    ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
                  let compose_kliesli_flipped:
                    ('b => Monad.t('c), 'a => Monad.t('b), 'a) => Monad.t('c);
                  let if_m:
                    (Monad.t(bool), Monad.t('a), Monad.t('a)) => Monad.t('a);
                  let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                  let ap: (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                  let when_: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                  let unless: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                };
              let bind: (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
              let flatMap: ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
              let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
              let composeKleisli:
                ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
              let flipComposeKleisli:
                ('b => Monad.t('c), 'a => Monad.t('b), 'a) => Monad.t('c);
              let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
              let when_: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
              let unless: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
              module Infix:
                {
                  module FunctorExtensions:
                    {
                      module BsFunctorExtensions:
                        {
                          let void: Functor.t('a) => Functor.t(unit);
                          let void_right:
                            ('a, Functor.t('b)) => Functor.t('a);
                          let void_left: (Functor.t('a), 'b) => Functor.t('b);
                          let flap:
                            (Functor.t('a => 'b), 'a) => Functor.t('b);
                        };
                      let map: ('a => 'b, Functor.t('a)) => Functor.t('b);
                      let flipMap: (Functor.t('a), 'a => 'b) => Functor.t('b);
                      let void: Functor.t('a) => Functor.t(unit);
                      let voidRight: ('a, Functor.t('b)) => Functor.t('a);
                      let voidLeft: (Functor.t('a), 'b) => Functor.t('b);
                      let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
                    };
                  let ( <$> ): ('a => 'b, Functor.t('a)) => Functor.t('b);
                  let ( <#> ): (Functor.t('a), 'a => 'b) => Functor.t('b);
                  let ( <$ ): ('a, Functor.t('b)) => Functor.t('a);
                  let ( $> ): (Functor.t('a), 'b) => Functor.t('b);
                  let ( <@> ): (Functor.t('a => 'b), 'a) => Functor.t('b);
                  module ApplyExtensions:
                    {
                      module BsApplyExtensions:
                        {
                          module I:
                            {
                              let ( <$> ):
                                ('a => 'b, Apply.t('a)) => Apply.t('b);
                              let ( <#> ):
                                (Apply.t('a), 'a => 'b) => Apply.t('b);
                              let ( <*> ):
                                (Apply.t('a => 'b), Apply.t('a)) =>
                                Apply.t('b);
                            };
                          let apply_first:
                            (Apply.t('a), Apply.t('b)) => Apply.t('a);
                          let apply_second:
                            (Apply.t('a), Apply.t('b)) => Apply.t('b);
                          let apply_both:
                            (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                          let lift2:
                            (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) =>
                            Apply.t('c);
                          let lift3:
                            (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                            Apply.t('c)) => Apply.t('d);
                          let lift4:
                            (('a, 'b, 'c, 'd) => 'e, Apply.t('a),
                            Apply.t('b), Apply.t('c), Apply.t('d)) =>
                            Apply.t('e);
                          let lift5:
                            (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a),
                            Apply.t('b), Apply.t('c), Apply.t('d),
                            Apply.t('e)) => Apply.t('f);
                          module Infix:
                            {
                              let ( <* ):
                                (Apply.t('a), Apply.t('b)) => Apply.t('a);
                              let ( *> ):
                                (Apply.t('a), Apply.t('b)) => Apply.t('b);
                            };
                        };
                      let apply:
                        (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                      let applyFirst:
                        (Apply.t('a), Apply.t('b)) => Apply.t('a);
                      let applySecond:
                        (Apply.t('a), Apply.t('b)) => Apply.t('b);
                      let map2:
                        (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) =>
                        Apply.t('c);
                      let map3:
                        (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                        Apply.t('c)) => Apply.t('d);
                      let map4:
                        (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                        Apply.t('c), Apply.t('d)) => Apply.t('e);
                      let map5:
                        (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a),
                        Apply.t('b), Apply.t('c), Apply.t('d),
                        Apply.t('e)) => Apply.t('f);
                      let tuple2:
                        (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                      let tuple3:
                        (Apply.t('a), Apply.t('b), Apply.t('c)) =>
                        Apply.t(('a, 'b, 'c));
                      let tuple4:
                        (Apply.t('a), Apply.t('b), Apply.t('c),
                        Apply.t('d)) => Apply.t(('a, 'b, 'c, 'd));
                      let tuple5:
                        (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d),
                        Apply.t('e)) => Apply.t(('a, 'b, 'c, 'd, 'e));
                    };
                  let ( <*> ):
                    (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                  let ( <* ): (Apply.t('a), Apply.t('b)) => Apply.t('a);
                  let ( *> ): (Apply.t('a), Apply.t('b)) => Apply.t('b);
                  module MonadExtensions:
                    {
                      module BsMonadExtensions:
                        {
                          module I:
                            {
                              let ( <$> ):
                                ('a => 'b, Monad.t('a)) => Monad.t('b);
                              let ( <#> ):
                                (Monad.t('a), 'a => 'b) => Monad.t('b);
                              let ( <*> ):
                                (Monad.t('a => 'b), Monad.t('a)) =>
                                Monad.t('b);
                              let ( >>= ):
                                (Monad.t('a), 'a => Monad.t('b)) =>
                                Monad.t('b);
                              let ( =<< ):
                                ('a => Monad.t('b), Monad.t('a)) =>
                                Monad.t('b);
                              let ( >=> ):
                                ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                                Monad.t('c);
                              let ( <=< ):
                                ('a => Monad.t('b), 'c => Monad.t('a), 'c) =>
                                Monad.t('b);
                            };
                          module A:
                            {
                              module I:
                                {
                                  let ( <$> ):
                                    ('a => 'b, Monad.t('a)) => Monad.t('b);
                                  let ( <#> ):
                                    (Monad.t('a), 'a => 'b) => Monad.t('b);
                                  let ( <*> ):
                                    (Monad.t('a => 'b), Monad.t('a)) =>
                                    Monad.t('b);
                                };
                              let liftA1:
                                ('a => 'b, Monad.t('a)) => Monad.t('b);
                              let when_:
                                (bool, Monad.t(unit)) => Monad.t(unit);
                              let unless:
                                (bool, Monad.t(unit)) => Monad.t(unit);
                            };
                          let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                          let compose_kliesli:
                            ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                            Monad.t('c);
                          let compose_kliesli_flipped:
                            ('b => Monad.t('c), 'a => Monad.t('b), 'a) =>
                            Monad.t('c);
                          let if_m:
                            (Monad.t(bool), Monad.t('a), Monad.t('a)) =>
                            Monad.t('a);
                          let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                          let ap:
                            (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                          let when_:
                            (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                          let unless:
                            (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                        };
                      let bind:
                        (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                      let flatMap:
                        ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                      let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                      let composeKleisli:
                        ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                        Monad.t('c);
                      let flipComposeKleisli:
                        ('b => Monad.t('c), 'a => Monad.t('b), 'a) =>
                        Monad.t('c);
                      let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                      let when_:
                        (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                      let unless:
                        (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                    };
                  let ( >>= ):
                    (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                  let ( =<< ):
                    ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                  let ( >=> ):
                    ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
                  let ( <=< ):
                    ('a => Monad.t('b), 'c => Monad.t('a), 'c) => Monad.t('b);
                };
            };
          module ValidationEApplicative = ValidationE.Applicative;
          type t('a) = list('a);
          let map: ('a => 'b, t('a)) => t('b);
          let fold_left: (('a, 'b) => 'a, 'a, t('b)) => 'a;
          let fold_right: (('b, 'a) => 'a, 'a, t('b)) => 'a;
          module Fold_Map:
            (M : BsAbstract.Interface.MONOID) => {
                                                   let fold_map:
                                                     ('a => M.t, t('a)) =>
                                                     M.t;
                                                 };
          module Fold_Map_Any:
            (M : BsAbstract.Interface.MONOID_ANY) => {
                                                       let fold_map:
                                                         ('a => M.t('a),
                                                         t('a)) => M.t('a);
                                                     };
          module Fold_Map_Plus:
            (P : BsAbstract.Interface.PLUS) => {
                                                 let fold_map:
                                                   ('a => P.t('a), t('a)) =>
                                                   P.t('a);
                                               };
          type applicative_t('a) = ValidationEApplicative.t('a);
          let traverse:
            ('a => applicative_t('b), t('a)) => applicative_t(t('b));
          let sequence: t(applicative_t('a)) => applicative_t(t('a));
        };
    module TraversableWithErrorsAsList:
      (Error : BsAbstract.Interface.TYPE) => {
                                               module ValidationE:
                                                 {
                                                   module Functor:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_List_Instances.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                     };
                                                   module BsFunctorExtensions:
                                                     {
                                                       let void:
                                                         Functor.t('a) =>
                                                         Functor.t(unit);
                                                       let void_right:
                                                         ('a,
                                                         Functor.t('b)) =>
                                                         Functor.t('a);
                                                       let void_left:
                                                         (Functor.t('a),
                                                         'b) => Functor.t('b);
                                                       let flap:
                                                         (Functor.t('a => 'b),
                                                         'a) => Functor.t('b);
                                                     };
                                                   let map:
                                                     ('a => 'b,
                                                     Functor.t('a)) =>
                                                     Functor.t('b);
                                                   let flipMap:
                                                     (Functor.t('a),
                                                     'a => 'b) =>
                                                     Functor.t('b);
                                                   let void:
                                                     Functor.t('a) =>
                                                     Functor.t(unit);
                                                   let voidRight:
                                                     ('a, Functor.t('b)) =>
                                                     Functor.t('a);
                                                   let voidLeft:
                                                     (Functor.t('a), 'b) =>
                                                     Functor.t('b);
                                                   let flap:
                                                     (Functor.t('a => 'b),
                                                     'a) => Functor.t('b);
                                                   module Apply:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_List_Instances.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                     };
                                                   module BsApplyExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                           let ( <#> ):
                                                             (Apply.t('a),
                                                             'a => 'b) =>
                                                             Apply.t('b);
                                                           let ( <*> ):
                                                             (Apply.t(
                                                              'a => 'b),
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                         };
                                                       let apply_first:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('a);
                                                       let apply_second:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('b);
                                                       let apply_both:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t(('a, 'b));
                                                       let lift2:
                                                         (('a, 'b) => 'c,
                                                         Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('c);
                                                       let lift3:
                                                         (('a, 'b, 'c) => 'd,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c)) =>
                                                         Apply.t('d);
                                                       let lift4:
                                                         (('a, 'b, 'c, 'd) =>
                                                          'e,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c),
                                                         Apply.t('d)) =>
                                                         Apply.t('e);
                                                       let lift5:
                                                         (('a, 'b, 'c, 'd,
                                                          'e) => 'f,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c),
                                                         Apply.t('d),
                                                         Apply.t('e)) =>
                                                         Apply.t('f);
                                                       module Infix:
                                                         {
                                                           let ( <* ):
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('a);
                                                           let ( *> ):
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('b);
                                                         };
                                                     };
                                                   let apply:
                                                     (Apply.t('a => 'b),
                                                     Apply.t('a)) =>
                                                     Apply.t('b);
                                                   let applyFirst:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('a);
                                                   let applySecond:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('b);
                                                   let map2:
                                                     (('a, 'b) => 'c,
                                                     Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('c);
                                                   let map3:
                                                     (('a, 'b, 'c) => 'd,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c)) =>
                                                     Apply.t('d);
                                                   let map4:
                                                     (('a, 'b, 'c, 'd) => 'e,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d)) =>
                                                     Apply.t('e);
                                                   let map5:
                                                     (('a, 'b, 'c, 'd, 'e) =>
                                                      'f,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d),
                                                     Apply.t('e)) =>
                                                     Apply.t('f);
                                                   let tuple2:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t(('a, 'b));
                                                   let tuple3:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c)) =>
                                                     Apply.t(('a, 'b, 'c));
                                                   let tuple4:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d)) =>
                                                     Apply.t(('a, 'b, 'c, 'd));
                                                   let tuple5:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d),
                                                     Apply.t('e)) =>
                                                     Apply.t(('a, 'b, 'c, 'd,
                                                             'e));
                                                   module Applicative:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_List_Instances.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                       let pure: 'a => t('a);
                                                     };
                                                   module BsApplicativeExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Applicative.t('a)) =>
                                                             Applicative.t('b);
                                                           let ( <#> ):
                                                             (Applicative.t('a),
                                                             'a => 'b) =>
                                                             Applicative.t('b);
                                                           let ( <*> ):
                                                             (Applicative.t(
                                                              'a => 'b),
                                                             Applicative.t('a)) =>
                                                             Applicative.t('b);
                                                         };
                                                       let liftA1:
                                                         ('a => 'b,
                                                         Applicative.t('a)) =>
                                                         Applicative.t('b);
                                                       let when_:
                                                         (bool,
                                                         Applicative.t(unit)) =>
                                                         Applicative.t(unit);
                                                       let unless:
                                                         (bool,
                                                         Applicative.t(unit)) =>
                                                         Applicative.t(unit);
                                                     };
                                                   let pure:
                                                     'a => Applicative.t('a);
                                                   let liftA1:
                                                     ('a => 'b,
                                                     Applicative.t('a)) =>
                                                     Applicative.t('b);
                                                   module Monad:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_List_Instances.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                       let pure: 'a => t('a);
                                                       let flat_map:
                                                         (t('a),
                                                         'a => t('b)) =>
                                                         t('b);
                                                     };
                                                   module BsMonadExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( <#> ):
                                                             (Monad.t('a),
                                                             'a => 'b) =>
                                                             Monad.t('b);
                                                           let ( <*> ):
                                                             (Monad.t(
                                                              'a => 'b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( >>= ):
                                                             (Monad.t('a),
                                                             'a =>
                                                             Monad.t('b)) =>
                                                             Monad.t('b);
                                                           let ( =<< ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( >=> ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             'b =>
                                                             Monad.t('c),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let ( <=< ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             'c =>
                                                             Monad.t('a),
                                                             'c) =>
                                                             Monad.t('b);
                                                         };
                                                       module A:
                                                         {
                                                           module I:
                                                             {
                                                               let ( <$> ):
                                                                 ('a => 'b,
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let ( <#> ):
                                                                 (Monad.t('a),
                                                                 'a => 'b) =>
                                                                 Monad.t('b);
                                                               let ( <*> ):
                                                                 (Monad.t(
                                                                  'a => 'b),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                             };
                                                           let liftA1:
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let when_:
                                                             (bool,
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                           let unless:
                                                             (bool,
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                         };
                                                       let flatten:
                                                         Monad.t(Monad.t('a)) =>
                                                         Monad.t('a);
                                                       let compose_kliesli:
                                                         ('a => Monad.t('b),
                                                         'b => Monad.t('c),
                                                         'a) => Monad.t('c);
                                                       let compose_kliesli_flipped:
                                                         ('b => Monad.t('c),
                                                         'a => Monad.t('b),
                                                         'a) => Monad.t('c);
                                                       let if_m:
                                                         (Monad.t(bool),
                                                         Monad.t('a),
                                                         Monad.t('a)) =>
                                                         Monad.t('a);
                                                       let liftM1:
                                                         ('a => 'b,
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let ap:
                                                         (Monad.t('a => 'b),
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let when_:
                                                         (Monad.t(bool),
                                                         Monad.t(unit)) =>
                                                         Monad.t(unit);
                                                       let unless:
                                                         (Monad.t(bool),
                                                         Monad.t(unit)) =>
                                                         Monad.t(unit);
                                                     };
                                                   let bind:
                                                     (Monad.t('a),
                                                     'a => Monad.t('b)) =>
                                                     Monad.t('b);
                                                   let flatMap:
                                                     ('a => Monad.t('b),
                                                     Monad.t('a)) =>
                                                     Monad.t('b);
                                                   let flatten:
                                                     Monad.t(Monad.t('a)) =>
                                                     Monad.t('a);
                                                   let composeKleisli:
                                                     ('a => Monad.t('b),
                                                     'b => Monad.t('c),
                                                     'a) => Monad.t('c);
                                                   let flipComposeKleisli:
                                                     ('b => Monad.t('c),
                                                     'a => Monad.t('b),
                                                     'a) => Monad.t('c);
                                                   let liftM1:
                                                     ('a => 'b,
                                                     Monad.t('a)) =>
                                                     Monad.t('b);
                                                   let when_:
                                                     (Monad.t(bool),
                                                     Monad.t(unit)) =>
                                                     Monad.t(unit);
                                                   let unless:
                                                     (Monad.t(bool),
                                                     Monad.t(unit)) =>
                                                     Monad.t(unit);
                                                   module Infix:
                                                     {
                                                       module FunctorExtensions:
                                                         {
                                                           module BsFunctorExtensions:
                                                             {
                                                               let void:
                                                                 Functor.t('a) =>
                                                                 Functor.t(
                                                                 unit);
                                                               let void_right:
                                                                 ('a,
                                                                 Functor.t('b)) =>
                                                                 Functor.t('a);
                                                               let void_left:
                                                                 (Functor.t('a),
                                                                 'b) =>
                                                                 Functor.t('b);
                                                               let flap:
                                                                 (Functor.t(
                                                                  'a => 'b),
                                                                 'a) =>
                                                                 Functor.t('b);
                                                             };
                                                           let map:
                                                             ('a => 'b,
                                                             Functor.t('a)) =>
                                                             Functor.t('b);
                                                           let flipMap:
                                                             (Functor.t('a),
                                                             'a => 'b) =>
                                                             Functor.t('b);
                                                           let void:
                                                             Functor.t('a) =>
                                                             Functor.t(unit);
                                                           let voidRight:
                                                             ('a,
                                                             Functor.t('b)) =>
                                                             Functor.t('a);
                                                           let voidLeft:
                                                             (Functor.t('a),
                                                             'b) =>
                                                             Functor.t('b);
                                                           let flap:
                                                             (Functor.t(
                                                              'a => 'b),
                                                             'a) =>
                                                             Functor.t('b);
                                                         };
                                                       let ( <$> ):
                                                         ('a => 'b,
                                                         Functor.t('a)) =>
                                                         Functor.t('b);
                                                       let ( <#> ):
                                                         (Functor.t('a),
                                                         'a => 'b) =>
                                                         Functor.t('b);
                                                       let ( <$ ):
                                                         ('a,
                                                         Functor.t('b)) =>
                                                         Functor.t('a);
                                                       let ( $> ):
                                                         (Functor.t('a),
                                                         'b) => Functor.t('b);
                                                       let ( <@> ):
                                                         (Functor.t('a => 'b),
                                                         'a) => Functor.t('b);
                                                       module ApplyExtensions:
                                                         {
                                                           module BsApplyExtensions:
                                                             {
                                                               module I:
                                                                 {
                                                                   let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Apply.t('a)) =>
                                                                    Apply.t('b);
                                                                   let ( <#> ):
                                                                    (
                                                                    Apply.t('a),
                                                                    'a => 'b) =>
                                                                    Apply.t('b);
                                                                   let ( <*> ):
                                                                    (
                                                                    Apply.t(
                                                                    'a => 'b),
                                                                    Apply.t('a)) =>
                                                                    Apply.t('b);
                                                                 };
                                                               let apply_first:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('a);
                                                               let apply_second:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('b);
                                                               let apply_both:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t(
                                                                 ('a, 'b));
                                                               let lift2:
                                                                 (('a, 'b) =>
                                                                  'c,
                                                                 Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('c);
                                                               let lift3:
                                                                 (('a, 'b,
                                                                  'c) => 'd,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c)) =>
                                                                 Apply.t('d);
                                                               let lift4:
                                                                 (('a, 'b,
                                                                  'c, 'd) =>
                                                                  'e,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c),
                                                                 Apply.t('d)) =>
                                                                 Apply.t('e);
                                                               let lift5:
                                                                 (('a, 'b,
                                                                  'c, 'd,
                                                                  'e) => 'f,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c),
                                                                 Apply.t('d),
                                                                 Apply.t('e)) =>
                                                                 Apply.t('f);
                                                               module Infix:
                                                                 {
                                                                   let ( <* ):
                                                                    (
                                                                    Apply.t('a),
                                                                    Apply.t('b)) =>
                                                                    Apply.t('a);
                                                                   let ( *> ):
                                                                    (
                                                                    Apply.t('a),
                                                                    Apply.t('b)) =>
                                                                    Apply.t('b);
                                                                 };
                                                             };
                                                           let apply:
                                                             (Apply.t(
                                                              'a => 'b),
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                           let applyFirst:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('a);
                                                           let applySecond:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('b);
                                                           let map2:
                                                             (('a, 'b) => 'c,
                                                             Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('c);
                                                           let map3:
                                                             (('a, 'b, 'c) =>
                                                              'd,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c)) =>
                                                             Apply.t('d);
                                                           let map4:
                                                             (('a, 'b, 'c,
                                                              'd) => 'e,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d)) =>
                                                             Apply.t('e);
                                                           let map5:
                                                             (('a, 'b, 'c,
                                                              'd, 'e) => 'f,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d),
                                                             Apply.t('e)) =>
                                                             Apply.t('f);
                                                           let tuple2:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t(
                                                             ('a, 'b));
                                                           let tuple3:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c));
                                                           let tuple4:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c, 'd));
                                                           let tuple5:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d),
                                                             Apply.t('e)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c, 'd,
                                                             'e));
                                                         };
                                                       let ( <*> ):
                                                         (Apply.t('a => 'b),
                                                         Apply.t('a)) =>
                                                         Apply.t('b);
                                                       let ( <* ):
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('a);
                                                       let ( *> ):
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('b);
                                                       module MonadExtensions:
                                                         {
                                                           module BsMonadExtensions:
                                                             {
                                                               module I:
                                                                 {
                                                                   let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( <#> ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a => 'b) =>
                                                                    Monad.t('b);
                                                                   let ( <*> ):
                                                                    (
                                                                    Monad.t(
                                                                    'a => 'b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( >>= ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a =>
                                                                    Monad.t('b)) =>
                                                                    Monad.t('b);
                                                                   let ( =<< ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( >=> ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    'b =>
                                                                    Monad.t('c),
                                                                    'a) =>
                                                                    Monad.t('c);
                                                                   let ( <=< ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    'c =>
                                                                    Monad.t('a),
                                                                    'c) =>
                                                                    Monad.t('b);
                                                                 };
                                                               module A:
                                                                 {
                                                                   module I:
                                                                    {
                                                                    let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                    let ( <#> ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a => 'b) =>
                                                                    Monad.t('b);
                                                                    let ( <*> ):
                                                                    (
                                                                    Monad.t(
                                                                    'a => 'b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                    };
                                                                   let liftA1:
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let when_:
                                                                    (
                                                                    bool,
                                                                    Monad.t(
                                                                    unit)) =>
                                                                    Monad.t(
                                                                    unit);
                                                                   let unless:
                                                                    (
                                                                    bool,
                                                                    Monad.t(
                                                                    unit)) =>
                                                                    Monad.t(
                                                                    unit);
                                                                 };
                                                               let flatten:
                                                                 Monad.t(
                                                                 Monad.t('a)) =>
                                                                 Monad.t('a);
                                                               let compose_kliesli:
                                                                 ('a =>
                                                                  Monad.t('b),
                                                                 'b =>
                                                                 Monad.t('c),
                                                                 'a) =>
                                                                 Monad.t('c);
                                                               let compose_kliesli_flipped:
                                                                 ('b =>
                                                                  Monad.t('c),
                                                                 'a =>
                                                                 Monad.t('b),
                                                                 'a) =>
                                                                 Monad.t('c);
                                                               let if_m:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t('a),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('a);
                                                               let liftM1:
                                                                 ('a => 'b,
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let ap:
                                                                 (Monad.t(
                                                                  'a => 'b),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let when_:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t(
                                                                 unit)) =>
                                                                 Monad.t(
                                                                 unit);
                                                               let unless:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t(
                                                                 unit)) =>
                                                                 Monad.t(
                                                                 unit);
                                                             };
                                                           let bind:
                                                             (Monad.t('a),
                                                             'a =>
                                                             Monad.t('b)) =>
                                                             Monad.t('b);
                                                           let flatMap:
                                                             ('a =>
                                                              Monad.t('b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let flatten:
                                                             Monad.t(
                                                             Monad.t('a)) =>
                                                             Monad.t('a);
                                                           let composeKleisli:
                                                             ('a =>
                                                              Monad.t('b),
                                                             'b =>
                                                             Monad.t('c),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let flipComposeKleisli:
                                                             ('b =>
                                                              Monad.t('c),
                                                             'a =>
                                                             Monad.t('b),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let liftM1:
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let when_:
                                                             (Monad.t(bool),
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                           let unless:
                                                             (Monad.t(bool),
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                         };
                                                       let ( >>= ):
                                                         (Monad.t('a),
                                                         'a => Monad.t('b)) =>
                                                         Monad.t('b);
                                                       let ( =<< ):
                                                         ('a => Monad.t('b),
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let ( >=> ):
                                                         ('a => Monad.t('b),
                                                         'b => Monad.t('c),
                                                         'a) => Monad.t('c);
                                                       let ( <=< ):
                                                         ('a => Monad.t('b),
                                                         'c => Monad.t('a),
                                                         'c) => Monad.t('b);
                                                     };
                                                 };
                                               module ValidationEApplicative =
                                                 ValidationE.Applicative;
                                               type t('a) = list('a);
                                               let map:
                                                 ('a => 'b, t('a)) => t('b);
                                               let fold_left:
                                                 (('a, 'b) => 'a, 'a,
                                                 t('b)) => 'a;
                                               let fold_right:
                                                 (('b, 'a) => 'a, 'a,
                                                 t('b)) => 'a;
                                               module Fold_Map:
                                                 (M : BsAbstract.Interface.MONOID) => 
                                                   {
                                                     let fold_map:
                                                       ('a => M.t, t('a)) =>
                                                       M.t;
                                                   };
                                               module Fold_Map_Any:
                                                 (M : BsAbstract.Interface.MONOID_ANY) => 
                                                   {
                                                     let fold_map:
                                                       ('a => M.t('a),
                                                       t('a)) => M.t('a);
                                                   };
                                               module Fold_Map_Plus:
                                                 (P : BsAbstract.Interface.PLUS) => 
                                                   {
                                                     let fold_map:
                                                       ('a => P.t('a),
                                                       t('a)) => P.t('a);
                                                   };
                                               type applicative_t('a) =
                                                   ValidationEApplicative.t('a);
                                               let traverse:
                                                 ('a => applicative_t('b),
                                                 t('a)) =>
                                                 applicative_t(t('b));
                                               let sequence:
                                                 t(applicative_t('a)) =>
                                                 applicative_t(t('a));
                                             };
    module TraversableWithErrorsAsListOfStrings:
      {
        module ValidationE:
          {
            module Functor:
              {
                type t('a) =
                    Relude_Validation.t('a,
                                         Relude_List_Instances.SemigroupAny.t(
                                         string));
                let map: ('a => 'b, t('a)) => t('b);
              };
            module BsFunctorExtensions:
              {
                let void: Functor.t('a) => Functor.t(unit);
                let void_right: ('a, Functor.t('b)) => Functor.t('a);
                let void_left: (Functor.t('a), 'b) => Functor.t('b);
                let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
              };
            let map: ('a => 'b, Functor.t('a)) => Functor.t('b);
            let flipMap: (Functor.t('a), 'a => 'b) => Functor.t('b);
            let void: Functor.t('a) => Functor.t(unit);
            let voidRight: ('a, Functor.t('b)) => Functor.t('a);
            let voidLeft: (Functor.t('a), 'b) => Functor.t('b);
            let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
            module Apply:
              {
                type t('a) =
                    Relude_Validation.t('a,
                                         Relude_List_Instances.SemigroupAny.t(
                                         string));
                let map: ('a => 'b, t('a)) => t('b);
                let apply: (t('a => 'b), t('a)) => t('b);
              };
            module BsApplyExtensions:
              {
                module I:
                  {
                    let ( <$> ): ('a => 'b, Apply.t('a)) => Apply.t('b);
                    let ( <#> ): (Apply.t('a), 'a => 'b) => Apply.t('b);
                    let ( <*> ):
                      (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                  };
                let apply_first: (Apply.t('a), Apply.t('b)) => Apply.t('a);
                let apply_second: (Apply.t('a), Apply.t('b)) => Apply.t('b);
                let apply_both:
                  (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                let lift2:
                  (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) => Apply.t('c);
                let lift3:
                  (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                  Apply.t('c)) => Apply.t('d);
                let lift4:
                  (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                  Apply.t('c), Apply.t('d)) => Apply.t('e);
                let lift5:
                  (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a), Apply.t('b),
                  Apply.t('c), Apply.t('d), Apply.t('e)) => Apply.t('f);
                module Infix:
                  {
                    let ( <* ): (Apply.t('a), Apply.t('b)) => Apply.t('a);
                    let ( *> ): (Apply.t('a), Apply.t('b)) => Apply.t('b);
                  };
              };
            let apply: (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
            let applyFirst: (Apply.t('a), Apply.t('b)) => Apply.t('a);
            let applySecond: (Apply.t('a), Apply.t('b)) => Apply.t('b);
            let map2:
              (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) => Apply.t('c);
            let map3:
              (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b), Apply.t('c)) =>
              Apply.t('d);
            let map4:
              (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b), Apply.t('c),
              Apply.t('d)) => Apply.t('e);
            let map5:
              (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a), Apply.t('b),
              Apply.t('c), Apply.t('d), Apply.t('e)) => Apply.t('f);
            let tuple2: (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
            let tuple3:
              (Apply.t('a), Apply.t('b), Apply.t('c)) =>
              Apply.t(('a, 'b, 'c));
            let tuple4:
              (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d)) =>
              Apply.t(('a, 'b, 'c, 'd));
            let tuple5:
              (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d),
              Apply.t('e)) => Apply.t(('a, 'b, 'c, 'd, 'e));
            module Applicative:
              {
                type t('a) =
                    Relude_Validation.t('a,
                                         Relude_List_Instances.SemigroupAny.t(
                                         string));
                let map: ('a => 'b, t('a)) => t('b);
                let apply: (t('a => 'b), t('a)) => t('b);
                let pure: 'a => t('a);
              };
            module BsApplicativeExtensions:
              {
                module I:
                  {
                    let ( <$> ):
                      ('a => 'b, Applicative.t('a)) => Applicative.t('b);
                    let ( <#> ):
                      (Applicative.t('a), 'a => 'b) => Applicative.t('b);
                    let ( <*> ):
                      (Applicative.t('a => 'b), Applicative.t('a)) =>
                      Applicative.t('b);
                  };
                let liftA1:
                  ('a => 'b, Applicative.t('a)) => Applicative.t('b);
                let when_: (bool, Applicative.t(unit)) => Applicative.t(unit);
                let unless:
                  (bool, Applicative.t(unit)) => Applicative.t(unit);
              };
            let pure: 'a => Applicative.t('a);
            let liftA1: ('a => 'b, Applicative.t('a)) => Applicative.t('b);
            module Monad:
              {
                type t('a) =
                    Relude_Validation.t('a,
                                         Relude_List_Instances.SemigroupAny.t(
                                         string));
                let map: ('a => 'b, t('a)) => t('b);
                let apply: (t('a => 'b), t('a)) => t('b);
                let pure: 'a => t('a);
                let flat_map: (t('a), 'a => t('b)) => t('b);
              };
            module BsMonadExtensions:
              {
                module I:
                  {
                    let ( <$> ): ('a => 'b, Monad.t('a)) => Monad.t('b);
                    let ( <#> ): (Monad.t('a), 'a => 'b) => Monad.t('b);
                    let ( <*> ):
                      (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                    let ( >>= ):
                      (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                    let ( =<< ):
                      ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                    let ( >=> ):
                      ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                      Monad.t('c);
                    let ( <=< ):
                      ('a => Monad.t('b), 'c => Monad.t('a), 'c) =>
                      Monad.t('b);
                  };
                module A:
                  {
                    module I:
                      {
                        let ( <$> ): ('a => 'b, Monad.t('a)) => Monad.t('b);
                        let ( <#> ): (Monad.t('a), 'a => 'b) => Monad.t('b);
                        let ( <*> ):
                          (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                      };
                    let liftA1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                    let when_: (bool, Monad.t(unit)) => Monad.t(unit);
                    let unless: (bool, Monad.t(unit)) => Monad.t(unit);
                  };
                let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                let compose_kliesli:
                  ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
                let compose_kliesli_flipped:
                  ('b => Monad.t('c), 'a => Monad.t('b), 'a) => Monad.t('c);
                let if_m:
                  (Monad.t(bool), Monad.t('a), Monad.t('a)) => Monad.t('a);
                let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                let ap: (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                let when_: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                let unless: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
              };
            let bind: (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
            let flatMap: ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
            let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
            let composeKleisli:
              ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
            let flipComposeKleisli:
              ('b => Monad.t('c), 'a => Monad.t('b), 'a) => Monad.t('c);
            let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
            let when_: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
            let unless: (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
            module Infix:
              {
                module FunctorExtensions:
                  {
                    module BsFunctorExtensions:
                      {
                        let void: Functor.t('a) => Functor.t(unit);
                        let void_right: ('a, Functor.t('b)) => Functor.t('a);
                        let void_left: (Functor.t('a), 'b) => Functor.t('b);
                        let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
                      };
                    let map: ('a => 'b, Functor.t('a)) => Functor.t('b);
                    let flipMap: (Functor.t('a), 'a => 'b) => Functor.t('b);
                    let void: Functor.t('a) => Functor.t(unit);
                    let voidRight: ('a, Functor.t('b)) => Functor.t('a);
                    let voidLeft: (Functor.t('a), 'b) => Functor.t('b);
                    let flap: (Functor.t('a => 'b), 'a) => Functor.t('b);
                  };
                let ( <$> ): ('a => 'b, Functor.t('a)) => Functor.t('b);
                let ( <#> ): (Functor.t('a), 'a => 'b) => Functor.t('b);
                let ( <$ ): ('a, Functor.t('b)) => Functor.t('a);
                let ( $> ): (Functor.t('a), 'b) => Functor.t('b);
                let ( <@> ): (Functor.t('a => 'b), 'a) => Functor.t('b);
                module ApplyExtensions:
                  {
                    module BsApplyExtensions:
                      {
                        module I:
                          {
                            let ( <$> ):
                              ('a => 'b, Apply.t('a)) => Apply.t('b);
                            let ( <#> ):
                              (Apply.t('a), 'a => 'b) => Apply.t('b);
                            let ( <*> ):
                              (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                          };
                        let apply_first:
                          (Apply.t('a), Apply.t('b)) => Apply.t('a);
                        let apply_second:
                          (Apply.t('a), Apply.t('b)) => Apply.t('b);
                        let apply_both:
                          (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                        let lift2:
                          (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) =>
                          Apply.t('c);
                        let lift3:
                          (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                          Apply.t('c)) => Apply.t('d);
                        let lift4:
                          (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                          Apply.t('c), Apply.t('d)) => Apply.t('e);
                        let lift5:
                          (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a),
                          Apply.t('b), Apply.t('c), Apply.t('d),
                          Apply.t('e)) => Apply.t('f);
                        module Infix:
                          {
                            let ( <* ):
                              (Apply.t('a), Apply.t('b)) => Apply.t('a);
                            let ( *> ):
                              (Apply.t('a), Apply.t('b)) => Apply.t('b);
                          };
                      };
                    let apply:
                      (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                    let applyFirst: (Apply.t('a), Apply.t('b)) => Apply.t('a);
                    let applySecond:
                      (Apply.t('a), Apply.t('b)) => Apply.t('b);
                    let map2:
                      (('a, 'b) => 'c, Apply.t('a), Apply.t('b)) =>
                      Apply.t('c);
                    let map3:
                      (('a, 'b, 'c) => 'd, Apply.t('a), Apply.t('b),
                      Apply.t('c)) => Apply.t('d);
                    let map4:
                      (('a, 'b, 'c, 'd) => 'e, Apply.t('a), Apply.t('b),
                      Apply.t('c), Apply.t('d)) => Apply.t('e);
                    let map5:
                      (('a, 'b, 'c, 'd, 'e) => 'f, Apply.t('a), Apply.t('b),
                      Apply.t('c), Apply.t('d), Apply.t('e)) => Apply.t('f);
                    let tuple2:
                      (Apply.t('a), Apply.t('b)) => Apply.t(('a, 'b));
                    let tuple3:
                      (Apply.t('a), Apply.t('b), Apply.t('c)) =>
                      Apply.t(('a, 'b, 'c));
                    let tuple4:
                      (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d)) =>
                      Apply.t(('a, 'b, 'c, 'd));
                    let tuple5:
                      (Apply.t('a), Apply.t('b), Apply.t('c), Apply.t('d),
                      Apply.t('e)) => Apply.t(('a, 'b, 'c, 'd, 'e));
                  };
                let ( <*> ): (Apply.t('a => 'b), Apply.t('a)) => Apply.t('b);
                let ( <* ): (Apply.t('a), Apply.t('b)) => Apply.t('a);
                let ( *> ): (Apply.t('a), Apply.t('b)) => Apply.t('b);
                module MonadExtensions:
                  {
                    module BsMonadExtensions:
                      {
                        module I:
                          {
                            let ( <$> ):
                              ('a => 'b, Monad.t('a)) => Monad.t('b);
                            let ( <#> ):
                              (Monad.t('a), 'a => 'b) => Monad.t('b);
                            let ( <*> ):
                              (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                            let ( >>= ):
                              (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                            let ( =<< ):
                              ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                            let ( >=> ):
                              ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                              Monad.t('c);
                            let ( <=< ):
                              ('a => Monad.t('b), 'c => Monad.t('a), 'c) =>
                              Monad.t('b);
                          };
                        module A:
                          {
                            module I:
                              {
                                let ( <$> ):
                                  ('a => 'b, Monad.t('a)) => Monad.t('b);
                                let ( <#> ):
                                  (Monad.t('a), 'a => 'b) => Monad.t('b);
                                let ( <*> ):
                                  (Monad.t('a => 'b), Monad.t('a)) =>
                                  Monad.t('b);
                              };
                            let liftA1:
                              ('a => 'b, Monad.t('a)) => Monad.t('b);
                            let when_: (bool, Monad.t(unit)) => Monad.t(unit);
                            let unless:
                              (bool, Monad.t(unit)) => Monad.t(unit);
                          };
                        let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                        let compose_kliesli:
                          ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                          Monad.t('c);
                        let compose_kliesli_flipped:
                          ('b => Monad.t('c), 'a => Monad.t('b), 'a) =>
                          Monad.t('c);
                        let if_m:
                          (Monad.t(bool), Monad.t('a), Monad.t('a)) =>
                          Monad.t('a);
                        let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                        let ap:
                          (Monad.t('a => 'b), Monad.t('a)) => Monad.t('b);
                        let when_:
                          (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                        let unless:
                          (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                      };
                    let bind: (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                    let flatMap:
                      ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                    let flatten: Monad.t(Monad.t('a)) => Monad.t('a);
                    let composeKleisli:
                      ('a => Monad.t('b), 'b => Monad.t('c), 'a) =>
                      Monad.t('c);
                    let flipComposeKleisli:
                      ('b => Monad.t('c), 'a => Monad.t('b), 'a) =>
                      Monad.t('c);
                    let liftM1: ('a => 'b, Monad.t('a)) => Monad.t('b);
                    let when_:
                      (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                    let unless:
                      (Monad.t(bool), Monad.t(unit)) => Monad.t(unit);
                  };
                let ( >>= ): (Monad.t('a), 'a => Monad.t('b)) => Monad.t('b);
                let ( =<< ): ('a => Monad.t('b), Monad.t('a)) => Monad.t('b);
                let ( >=> ):
                  ('a => Monad.t('b), 'b => Monad.t('c), 'a) => Monad.t('c);
                let ( <=< ):
                  ('a => Monad.t('b), 'c => Monad.t('a), 'c) => Monad.t('b);
              };
          };
        module ValidationEApplicative = ValidationE.Applicative;
        type t('a) = list('a);
        let map: ('a => 'b, t('a)) => t('b);
        let fold_left: (('a, 'b) => 'a, 'a, t('b)) => 'a;
        let fold_right: (('b, 'a) => 'a, 'a, t('b)) => 'a;
        module Fold_Map:
          (M : BsAbstract.Interface.MONOID) => {
                                                 let fold_map:
                                                   ('a => M.t, t('a)) => M.t;
                                               };
        module Fold_Map_Any:
          (M : BsAbstract.Interface.MONOID_ANY) => {
                                                     let fold_map:
                                                       ('a => M.t('a),
                                                       t('a)) => M.t('a);
                                                   };
        module Fold_Map_Plus:
          (P : BsAbstract.Interface.PLUS) => {
                                               let fold_map:
                                                 ('a => P.t('a), t('a)) =>
                                                 P.t('a);
                                             };
        type applicative_t('a) = ValidationEApplicative.t('a);
        let traverse:
          ('a => applicative_t('b), t('a)) => applicative_t(t('b));
        let sequence: t(applicative_t('a)) => applicative_t(t('a));
      };
    module TraversableWithErrorsAsNonEmptyList:
      (Error : BsAbstract.Interface.TYPE) => {
                                               module ValidationE:
                                                 {
                                                   module Functor:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_NonEmpty.List.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                     };
                                                   module BsFunctorExtensions:
                                                     {
                                                       let void:
                                                         Functor.t('a) =>
                                                         Functor.t(unit);
                                                       let void_right:
                                                         ('a,
                                                         Functor.t('b)) =>
                                                         Functor.t('a);
                                                       let void_left:
                                                         (Functor.t('a),
                                                         'b) => Functor.t('b);
                                                       let flap:
                                                         (Functor.t('a => 'b),
                                                         'a) => Functor.t('b);
                                                     };
                                                   let map:
                                                     ('a => 'b,
                                                     Functor.t('a)) =>
                                                     Functor.t('b);
                                                   let flipMap:
                                                     (Functor.t('a),
                                                     'a => 'b) =>
                                                     Functor.t('b);
                                                   let void:
                                                     Functor.t('a) =>
                                                     Functor.t(unit);
                                                   let voidRight:
                                                     ('a, Functor.t('b)) =>
                                                     Functor.t('a);
                                                   let voidLeft:
                                                     (Functor.t('a), 'b) =>
                                                     Functor.t('b);
                                                   let flap:
                                                     (Functor.t('a => 'b),
                                                     'a) => Functor.t('b);
                                                   module Apply:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_NonEmpty.List.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                     };
                                                   module BsApplyExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                           let ( <#> ):
                                                             (Apply.t('a),
                                                             'a => 'b) =>
                                                             Apply.t('b);
                                                           let ( <*> ):
                                                             (Apply.t(
                                                              'a => 'b),
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                         };
                                                       let apply_first:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('a);
                                                       let apply_second:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('b);
                                                       let apply_both:
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t(('a, 'b));
                                                       let lift2:
                                                         (('a, 'b) => 'c,
                                                         Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('c);
                                                       let lift3:
                                                         (('a, 'b, 'c) => 'd,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c)) =>
                                                         Apply.t('d);
                                                       let lift4:
                                                         (('a, 'b, 'c, 'd) =>
                                                          'e,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c),
                                                         Apply.t('d)) =>
                                                         Apply.t('e);
                                                       let lift5:
                                                         (('a, 'b, 'c, 'd,
                                                          'e) => 'f,
                                                         Apply.t('a),
                                                         Apply.t('b),
                                                         Apply.t('c),
                                                         Apply.t('d),
                                                         Apply.t('e)) =>
                                                         Apply.t('f);
                                                       module Infix:
                                                         {
                                                           let ( <* ):
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('a);
                                                           let ( *> ):
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('b);
                                                         };
                                                     };
                                                   let apply:
                                                     (Apply.t('a => 'b),
                                                     Apply.t('a)) =>
                                                     Apply.t('b);
                                                   let applyFirst:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('a);
                                                   let applySecond:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('b);
                                                   let map2:
                                                     (('a, 'b) => 'c,
                                                     Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t('c);
                                                   let map3:
                                                     (('a, 'b, 'c) => 'd,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c)) =>
                                                     Apply.t('d);
                                                   let map4:
                                                     (('a, 'b, 'c, 'd) => 'e,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d)) =>
                                                     Apply.t('e);
                                                   let map5:
                                                     (('a, 'b, 'c, 'd, 'e) =>
                                                      'f,
                                                     Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d),
                                                     Apply.t('e)) =>
                                                     Apply.t('f);
                                                   let tuple2:
                                                     (Apply.t('a),
                                                     Apply.t('b)) =>
                                                     Apply.t(('a, 'b));
                                                   let tuple3:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c)) =>
                                                     Apply.t(('a, 'b, 'c));
                                                   let tuple4:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d)) =>
                                                     Apply.t(('a, 'b, 'c, 'd));
                                                   let tuple5:
                                                     (Apply.t('a),
                                                     Apply.t('b),
                                                     Apply.t('c),
                                                     Apply.t('d),
                                                     Apply.t('e)) =>
                                                     Apply.t(('a, 'b, 'c, 'd,
                                                             'e));
                                                   module Applicative:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_NonEmpty.List.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                       let pure: 'a => t('a);
                                                     };
                                                   module BsApplicativeExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Applicative.t('a)) =>
                                                             Applicative.t('b);
                                                           let ( <#> ):
                                                             (Applicative.t('a),
                                                             'a => 'b) =>
                                                             Applicative.t('b);
                                                           let ( <*> ):
                                                             (Applicative.t(
                                                              'a => 'b),
                                                             Applicative.t('a)) =>
                                                             Applicative.t('b);
                                                         };
                                                       let liftA1:
                                                         ('a => 'b,
                                                         Applicative.t('a)) =>
                                                         Applicative.t('b);
                                                       let when_:
                                                         (bool,
                                                         Applicative.t(unit)) =>
                                                         Applicative.t(unit);
                                                       let unless:
                                                         (bool,
                                                         Applicative.t(unit)) =>
                                                         Applicative.t(unit);
                                                     };
                                                   let pure:
                                                     'a => Applicative.t('a);
                                                   let liftA1:
                                                     ('a => 'b,
                                                     Applicative.t('a)) =>
                                                     Applicative.t('b);
                                                   module Monad:
                                                     {
                                                       type t('a) =
                                                           Relude_Validation.t(
                                                           'a,
                                                            Relude_NonEmpty.List.SemigroupAny.t(
                                                            Error.t));
                                                       let map:
                                                         ('a => 'b, t('a)) =>
                                                         t('b);
                                                       let apply:
                                                         (t('a => 'b),
                                                         t('a)) => t('b);
                                                       let pure: 'a => t('a);
                                                       let flat_map:
                                                         (t('a),
                                                         'a => t('b)) =>
                                                         t('b);
                                                     };
                                                   module BsMonadExtensions:
                                                     {
                                                       module I:
                                                         {
                                                           let ( <$> ):
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( <#> ):
                                                             (Monad.t('a),
                                                             'a => 'b) =>
                                                             Monad.t('b);
                                                           let ( <*> ):
                                                             (Monad.t(
                                                              'a => 'b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( >>= ):
                                                             (Monad.t('a),
                                                             'a =>
                                                             Monad.t('b)) =>
                                                             Monad.t('b);
                                                           let ( =<< ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let ( >=> ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             'b =>
                                                             Monad.t('c),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let ( <=< ):
                                                             ('a =>
                                                              Monad.t('b),
                                                             'c =>
                                                             Monad.t('a),
                                                             'c) =>
                                                             Monad.t('b);
                                                         };
                                                       module A:
                                                         {
                                                           module I:
                                                             {
                                                               let ( <$> ):
                                                                 ('a => 'b,
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let ( <#> ):
                                                                 (Monad.t('a),
                                                                 'a => 'b) =>
                                                                 Monad.t('b);
                                                               let ( <*> ):
                                                                 (Monad.t(
                                                                  'a => 'b),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                             };
                                                           let liftA1:
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let when_:
                                                             (bool,
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                           let unless:
                                                             (bool,
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                         };
                                                       let flatten:
                                                         Monad.t(Monad.t('a)) =>
                                                         Monad.t('a);
                                                       let compose_kliesli:
                                                         ('a => Monad.t('b),
                                                         'b => Monad.t('c),
                                                         'a) => Monad.t('c);
                                                       let compose_kliesli_flipped:
                                                         ('b => Monad.t('c),
                                                         'a => Monad.t('b),
                                                         'a) => Monad.t('c);
                                                       let if_m:
                                                         (Monad.t(bool),
                                                         Monad.t('a),
                                                         Monad.t('a)) =>
                                                         Monad.t('a);
                                                       let liftM1:
                                                         ('a => 'b,
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let ap:
                                                         (Monad.t('a => 'b),
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let when_:
                                                         (Monad.t(bool),
                                                         Monad.t(unit)) =>
                                                         Monad.t(unit);
                                                       let unless:
                                                         (Monad.t(bool),
                                                         Monad.t(unit)) =>
                                                         Monad.t(unit);
                                                     };
                                                   let bind:
                                                     (Monad.t('a),
                                                     'a => Monad.t('b)) =>
                                                     Monad.t('b);
                                                   let flatMap:
                                                     ('a => Monad.t('b),
                                                     Monad.t('a)) =>
                                                     Monad.t('b);
                                                   let flatten:
                                                     Monad.t(Monad.t('a)) =>
                                                     Monad.t('a);
                                                   let composeKleisli:
                                                     ('a => Monad.t('b),
                                                     'b => Monad.t('c),
                                                     'a) => Monad.t('c);
                                                   let flipComposeKleisli:
                                                     ('b => Monad.t('c),
                                                     'a => Monad.t('b),
                                                     'a) => Monad.t('c);
                                                   let liftM1:
                                                     ('a => 'b,
                                                     Monad.t('a)) =>
                                                     Monad.t('b);
                                                   let when_:
                                                     (Monad.t(bool),
                                                     Monad.t(unit)) =>
                                                     Monad.t(unit);
                                                   let unless:
                                                     (Monad.t(bool),
                                                     Monad.t(unit)) =>
                                                     Monad.t(unit);
                                                   module Infix:
                                                     {
                                                       module FunctorExtensions:
                                                         {
                                                           module BsFunctorExtensions:
                                                             {
                                                               let void:
                                                                 Functor.t('a) =>
                                                                 Functor.t(
                                                                 unit);
                                                               let void_right:
                                                                 ('a,
                                                                 Functor.t('b)) =>
                                                                 Functor.t('a);
                                                               let void_left:
                                                                 (Functor.t('a),
                                                                 'b) =>
                                                                 Functor.t('b);
                                                               let flap:
                                                                 (Functor.t(
                                                                  'a => 'b),
                                                                 'a) =>
                                                                 Functor.t('b);
                                                             };
                                                           let map:
                                                             ('a => 'b,
                                                             Functor.t('a)) =>
                                                             Functor.t('b);
                                                           let flipMap:
                                                             (Functor.t('a),
                                                             'a => 'b) =>
                                                             Functor.t('b);
                                                           let void:
                                                             Functor.t('a) =>
                                                             Functor.t(unit);
                                                           let voidRight:
                                                             ('a,
                                                             Functor.t('b)) =>
                                                             Functor.t('a);
                                                           let voidLeft:
                                                             (Functor.t('a),
                                                             'b) =>
                                                             Functor.t('b);
                                                           let flap:
                                                             (Functor.t(
                                                              'a => 'b),
                                                             'a) =>
                                                             Functor.t('b);
                                                         };
                                                       let ( <$> ):
                                                         ('a => 'b,
                                                         Functor.t('a)) =>
                                                         Functor.t('b);
                                                       let ( <#> ):
                                                         (Functor.t('a),
                                                         'a => 'b) =>
                                                         Functor.t('b);
                                                       let ( <$ ):
                                                         ('a,
                                                         Functor.t('b)) =>
                                                         Functor.t('a);
                                                       let ( $> ):
                                                         (Functor.t('a),
                                                         'b) => Functor.t('b);
                                                       let ( <@> ):
                                                         (Functor.t('a => 'b),
                                                         'a) => Functor.t('b);
                                                       module ApplyExtensions:
                                                         {
                                                           module BsApplyExtensions:
                                                             {
                                                               module I:
                                                                 {
                                                                   let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Apply.t('a)) =>
                                                                    Apply.t('b);
                                                                   let ( <#> ):
                                                                    (
                                                                    Apply.t('a),
                                                                    'a => 'b) =>
                                                                    Apply.t('b);
                                                                   let ( <*> ):
                                                                    (
                                                                    Apply.t(
                                                                    'a => 'b),
                                                                    Apply.t('a)) =>
                                                                    Apply.t('b);
                                                                 };
                                                               let apply_first:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('a);
                                                               let apply_second:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('b);
                                                               let apply_both:
                                                                 (Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t(
                                                                 ('a, 'b));
                                                               let lift2:
                                                                 (('a, 'b) =>
                                                                  'c,
                                                                 Apply.t('a),
                                                                 Apply.t('b)) =>
                                                                 Apply.t('c);
                                                               let lift3:
                                                                 (('a, 'b,
                                                                  'c) => 'd,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c)) =>
                                                                 Apply.t('d);
                                                               let lift4:
                                                                 (('a, 'b,
                                                                  'c, 'd) =>
                                                                  'e,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c),
                                                                 Apply.t('d)) =>
                                                                 Apply.t('e);
                                                               let lift5:
                                                                 (('a, 'b,
                                                                  'c, 'd,
                                                                  'e) => 'f,
                                                                 Apply.t('a),
                                                                 Apply.t('b),
                                                                 Apply.t('c),
                                                                 Apply.t('d),
                                                                 Apply.t('e)) =>
                                                                 Apply.t('f);
                                                               module Infix:
                                                                 {
                                                                   let ( <* ):
                                                                    (
                                                                    Apply.t('a),
                                                                    Apply.t('b)) =>
                                                                    Apply.t('a);
                                                                   let ( *> ):
                                                                    (
                                                                    Apply.t('a),
                                                                    Apply.t('b)) =>
                                                                    Apply.t('b);
                                                                 };
                                                             };
                                                           let apply:
                                                             (Apply.t(
                                                              'a => 'b),
                                                             Apply.t('a)) =>
                                                             Apply.t('b);
                                                           let applyFirst:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('a);
                                                           let applySecond:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('b);
                                                           let map2:
                                                             (('a, 'b) => 'c,
                                                             Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t('c);
                                                           let map3:
                                                             (('a, 'b, 'c) =>
                                                              'd,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c)) =>
                                                             Apply.t('d);
                                                           let map4:
                                                             (('a, 'b, 'c,
                                                              'd) => 'e,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d)) =>
                                                             Apply.t('e);
                                                           let map5:
                                                             (('a, 'b, 'c,
                                                              'd, 'e) => 'f,
                                                             Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d),
                                                             Apply.t('e)) =>
                                                             Apply.t('f);
                                                           let tuple2:
                                                             (Apply.t('a),
                                                             Apply.t('b)) =>
                                                             Apply.t(
                                                             ('a, 'b));
                                                           let tuple3:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c));
                                                           let tuple4:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c, 'd));
                                                           let tuple5:
                                                             (Apply.t('a),
                                                             Apply.t('b),
                                                             Apply.t('c),
                                                             Apply.t('d),
                                                             Apply.t('e)) =>
                                                             Apply.t(
                                                             ('a, 'b, 'c, 'd,
                                                             'e));
                                                         };
                                                       let ( <*> ):
                                                         (Apply.t('a => 'b),
                                                         Apply.t('a)) =>
                                                         Apply.t('b);
                                                       let ( <* ):
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('a);
                                                       let ( *> ):
                                                         (Apply.t('a),
                                                         Apply.t('b)) =>
                                                         Apply.t('b);
                                                       module MonadExtensions:
                                                         {
                                                           module BsMonadExtensions:
                                                             {
                                                               module I:
                                                                 {
                                                                   let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( <#> ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a => 'b) =>
                                                                    Monad.t('b);
                                                                   let ( <*> ):
                                                                    (
                                                                    Monad.t(
                                                                    'a => 'b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( >>= ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a =>
                                                                    Monad.t('b)) =>
                                                                    Monad.t('b);
                                                                   let ( =<< ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let ( >=> ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    'b =>
                                                                    Monad.t('c),
                                                                    'a) =>
                                                                    Monad.t('c);
                                                                   let ( <=< ):
                                                                    (
                                                                    'a =>
                                                                    Monad.t('b),
                                                                    'c =>
                                                                    Monad.t('a),
                                                                    'c) =>
                                                                    Monad.t('b);
                                                                 };
                                                               module A:
                                                                 {
                                                                   module I:
                                                                    {
                                                                    let ( <$> ):
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                    let ( <#> ):
                                                                    (
                                                                    Monad.t('a),
                                                                    'a => 'b) =>
                                                                    Monad.t('b);
                                                                    let ( <*> ):
                                                                    (
                                                                    Monad.t(
                                                                    'a => 'b),
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                    };
                                                                   let liftA1:
                                                                    (
                                                                    'a => 'b,
                                                                    Monad.t('a)) =>
                                                                    Monad.t('b);
                                                                   let when_:
                                                                    (
                                                                    bool,
                                                                    Monad.t(
                                                                    unit)) =>
                                                                    Monad.t(
                                                                    unit);
                                                                   let unless:
                                                                    (
                                                                    bool,
                                                                    Monad.t(
                                                                    unit)) =>
                                                                    Monad.t(
                                                                    unit);
                                                                 };
                                                               let flatten:
                                                                 Monad.t(
                                                                 Monad.t('a)) =>
                                                                 Monad.t('a);
                                                               let compose_kliesli:
                                                                 ('a =>
                                                                  Monad.t('b),
                                                                 'b =>
                                                                 Monad.t('c),
                                                                 'a) =>
                                                                 Monad.t('c);
                                                               let compose_kliesli_flipped:
                                                                 ('b =>
                                                                  Monad.t('c),
                                                                 'a =>
                                                                 Monad.t('b),
                                                                 'a) =>
                                                                 Monad.t('c);
                                                               let if_m:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t('a),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('a);
                                                               let liftM1:
                                                                 ('a => 'b,
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let ap:
                                                                 (Monad.t(
                                                                  'a => 'b),
                                                                 Monad.t('a)) =>
                                                                 Monad.t('b);
                                                               let when_:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t(
                                                                 unit)) =>
                                                                 Monad.t(
                                                                 unit);
                                                               let unless:
                                                                 (Monad.t(
                                                                  bool),
                                                                 Monad.t(
                                                                 unit)) =>
                                                                 Monad.t(
                                                                 unit);
                                                             };
                                                           let bind:
                                                             (Monad.t('a),
                                                             'a =>
                                                             Monad.t('b)) =>
                                                             Monad.t('b);
                                                           let flatMap:
                                                             ('a =>
                                                              Monad.t('b),
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let flatten:
                                                             Monad.t(
                                                             Monad.t('a)) =>
                                                             Monad.t('a);
                                                           let composeKleisli:
                                                             ('a =>
                                                              Monad.t('b),
                                                             'b =>
                                                             Monad.t('c),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let flipComposeKleisli:
                                                             ('b =>
                                                              Monad.t('c),
                                                             'a =>
                                                             Monad.t('b),
                                                             'a) =>
                                                             Monad.t('c);
                                                           let liftM1:
                                                             ('a => 'b,
                                                             Monad.t('a)) =>
                                                             Monad.t('b);
                                                           let when_:
                                                             (Monad.t(bool),
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                           let unless:
                                                             (Monad.t(bool),
                                                             Monad.t(unit)) =>
                                                             Monad.t(unit);
                                                         };
                                                       let ( >>= ):
                                                         (Monad.t('a),
                                                         'a => Monad.t('b)) =>
                                                         Monad.t('b);
                                                       let ( =<< ):
                                                         ('a => Monad.t('b),
                                                         Monad.t('a)) =>
                                                         Monad.t('b);
                                                       let ( >=> ):
                                                         ('a => Monad.t('b),
                                                         'b => Monad.t('c),
                                                         'a) => Monad.t('c);
                                                       let ( <=< ):
                                                         ('a => Monad.t('b),
                                                         'c => Monad.t('a),
                                                         'c) => Monad.t('b);
                                                     };
                                                 };
                                               module ValidationEApplicative =
                                                 ValidationE.Applicative;
                                               type t('a) = list('a);
                                               let map:
                                                 ('a => 'b, t('a)) => t('b);
                                               let fold_left:
                                                 (('a, 'b) => 'a, 'a,
                                                 t('b)) => 'a;
                                               let fold_right:
                                                 (('b, 'a) => 'a, 'a,
                                                 t('b)) => 'a;
                                               module Fold_Map:
                                                 (M : BsAbstract.Interface.MONOID) => 
                                                   {
                                                     let fold_map:
                                                       ('a => M.t, t('a)) =>
                                                       M.t;
                                                   };
                                               module Fold_Map_Any:
                                                 (M : BsAbstract.Interface.MONOID_ANY) => 
                                                   {
                                                     let fold_map:
                                                       ('a => M.t('a),
                                                       t('a)) => M.t('a);
                                                   };
                                               module Fold_Map_Plus:
                                                 (P : BsAbstract.Interface.PLUS) => 
                                                   {
                                                     let fold_map:
                                                       ('a => P.t('a),
                                                       t('a)) => P.t('a);
                                                   };
                                               type applicative_t('a) =
                                                   ValidationEApplicative.t('a);
                                               let traverse:
                                                 ('a => applicative_t('b),
                                                 t('a)) =>
                                                 applicative_t(t('b));
                                               let sequence:
                                                 t(applicative_t('a)) =>
                                                 applicative_t(t('a));
                                             };
    let traverse:
      ('a => Belt.Result.t('b, 'c), list('a)) =>
      Relude_Validation.t(list('b), Relude_NonEmpty.List.t('c));
  };
