#ifndef CHR_SCRIPTS_H
#define CHR_SCRIPTS_H

typedef void (*ChrScript_t)(void *);

/******************************************************************************/
/**              Scripts, binded to every object of certain type             **/
/******************************************************************************/
void BoomerangScript(CharData_t *Char);
void KnifeScript(CharData_t *Char);
void BombScript(CharData_t *Char);
void BonusScoreScript(CharData_t *Char);
void ExplodeScript(CharData_t *Char);
void BirdScript(CharData_t *Char);
void BubblesScript(CharData_t *Char);
void HungryPlantScript(CharData_t *Char);
void SwitchScript(CharData_t *Char);
void WagonScript(CharData_t *Char);
void MineGasScript(CharData_t *Char);
void Arrow1Script(CharData_t *Char);
void Arrow2Script(CharData_t *Char);
void StarScript(CharData_t *Char);
void BulletScript(CharData_t *Char);
void PieceOfGoldScript(CharData_t *Char);

void SimpleScript(void *e);
#endif /* CHR_SCRIPTS_H */
