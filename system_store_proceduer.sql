sp_depends spGetemp -- view the dependencies of sp.
---above sp is important one.It checks that If there are any sp that are referencing a tabe which you're about to drop.
--sp_depends can also be used with other db obj like table etc.

--sp_helptext spGetemp --view the text of sp
--sp_help spGetemp -- view the info about sp