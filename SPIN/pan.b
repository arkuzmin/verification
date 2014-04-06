	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: /* STATE 1 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: /* STATE 2 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: /* STATE 3 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: /* STATE 4 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: /* STATE 6 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Check */
;
		;
		
	case 9: /* STATE 2 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Reset */
;
		;
		
	case 11: /* STATE 3 */
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 9 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Dec */
;
		;
		
	case 14: /* STATE 3 */
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 15: /* STATE 9 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Inc */
;
		;
		
	case 17: /* STATE 3 */
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 9 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

