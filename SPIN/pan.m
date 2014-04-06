#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: /* STATE 1 - lab3.txt:31 - [(run Inc())] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - lab3.txt:32 - [(run Dec())] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - lab3.txt:33 - [(run Reset())] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 4 - lab3.txt:34 - [(run Check())] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][4] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 6 - lab3.txt:36 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[4][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Check */
	case 8: /* STATE 1 - lab3.txt:27 - [assert(((x>=0)&&(x<=10)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert(((now.x>=0)&&(now.x<=10)), "((x>=0)&&(x<=10))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 2 - lab3.txt:28 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Reset */
	case 10: /* STATE 2 - lab3.txt:22 - [((x==10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.x==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 3 - lab3.txt:22 - [x = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 0;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 9 - lab3.txt:25 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Dec */
	case 13: /* STATE 2 - lab3.txt:14 - [((x>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.x>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 3 - lab3.txt:14 - [x = (x-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = (now.x-1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 9 - lab3.txt:17 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Inc */
	case 16: /* STATE 2 - lab3.txt:6 - [((x<10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.x<10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 3 - lab3.txt:6 - [x = (x+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = (now.x+1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 9 - lab3.txt:9 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

