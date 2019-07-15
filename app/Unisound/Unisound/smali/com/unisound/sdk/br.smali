.class Lcom/unisound/sdk/br;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unisound/sdk/br;->a:I

    iput v0, p0, Lcom/unisound/sdk/br;->b:I

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/br;->d:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->e:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unisound/sdk/br;->f:I

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->n:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->o:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->p:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->q:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unisound/sdk/br;->a:I

    iput v0, p0, Lcom/unisound/sdk/br;->b:I

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/br;->d:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->e:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unisound/sdk/br;->f:I

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->n:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->o:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->p:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/br;->q:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/br;->l()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/v;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/br;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->j:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/br;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->k:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->e:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/br;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->j:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->g:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->d:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->n:Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->m:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->o:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->e:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/br;->f:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/br;->i:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->p:Z

    return-void
.end method

.method protected h()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/br;->a:I

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/br;->q:Z

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/br;->b:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/br;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v3, 0x423

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "asr_serviceMode"

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_voiceField"

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_language"

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_domain"

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_serverAddr"

    const/16 v2, 0x3f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_VADTimeoutFrontSil"

    const/16 v2, 0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_VADTimeoutBackSil"

    const/16 v2, 0x3f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_wakeUPWord"

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_netTimeout"

    const/16 v2, 0x3f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nlu_enable"

    const/16 v2, 0x3fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nlu_scenario"

    const/16 v2, 0x3fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nlu_serverAddr"

    const/16 v2, 0x3fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_history"

    const/16 v2, 0x406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_city"

    const/16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_voiceID"

    const/16 v2, 0x408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_gps"

    const/16 v2, 0x409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_samplingRate"

    const/16 v2, 0x414

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTEngineTag"

    const/16 v2, 0x41a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTResultFilter"

    const/16 v2, 0x41b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTRecordingEnabled"

    const/16 v2, 0x41d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTPrintLog"

    const/16 v2, 0x41e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTFixASRContinuous"

    const/16 v2, 0x41f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTVadEnabled"

    const/16 v2, 0x425

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTFrontVadEnabled"

    const/16 v2, 0x420

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTSaveRecordingData"

    const/16 v2, 0x422

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTResultJson"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTFrontCacheTime"

    const/16 v2, 0x424

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTPrintEngineLog"

    const/16 v2, 0x426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTPrintTime"

    const/16 v2, 0x427

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTFrontResetCacheByteTime"

    const/16 v2, 0x42e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTDebugSaveLog"

    const/16 v2, 0x42f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTDebugPostlog"

    const/16 v2, 0x430

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTUseHandlerThread"

    const/16 v2, 0x431

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTSaveAfterVadRecordingData"

    const/16 v2, 0x432

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTMarkVAD"

    const/16 v2, 0x433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTResultJson"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTResultJson"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asr_OPTResultJson"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wakeup_OPTThresholdValue"

    const/16 v2, 0xc4e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->c:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->d:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->n:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->o:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->p:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/br;->q:Z

    return v0
.end method
