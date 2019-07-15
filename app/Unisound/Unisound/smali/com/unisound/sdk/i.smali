.class public Lcom/unisound/sdk/i;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "sampleRate"

.field private static final B:Ljava/lang/String; = "oneshot"

.field private static final C:Ljava/lang/String; = "oneshot_key"

.field private static final D:Ljava/lang/String; = "alread_awpe"

.field private static final E:Ljava/lang/String; = "productLine"

.field private static final F:Ljava/lang/String; = "punctuated"

.field public static final a:I = 0x1f40

.field public static final b:I = 0x3e80

.field public static final c:I = 0x13880

.field public static final d:Ljava/lang/String; = "far"

.field public static final e:Ljava/lang/String; = "near"

.field public static final f:Ljava/lang/String; = "8k"

.field public static final g:Ljava/lang/String; = "16k"

.field public static final h:Ljava/lang/String; = "16kto8k"

.field public static final i:Ljava/lang/String; = "general"

.field public static final j:Ljava/lang/String; = "poi"

.field public static final k:Ljava/lang/String; = "food"

.field public static final l:Ljava/lang/String; = "medical"

.field public static final m:Ljava/lang/String; = "movietv"

.field public static final n:Ljava/lang/String; = "textFormat"

.field public static final o:Ljava/lang/String; = "serverVad"

.field public static final p:Ljava/lang/String; = "best_result_return"

.field public static final q:Ljava/lang/String; = "false_alarm"

.field public static final r:Ljava/lang/String; = "domains_penalty"

.field public static final s:Ljava/lang/String; = "SGN_Setting"

.field public static final t:Ljava/lang/String; = "en"

.field public static final u:Ljava/lang/String; = "co"

.field public static final v:Ljava/lang/String; = "cn"

.field private static final w:Ljava/lang/String; = "modelType"

.field private static final x:Ljava/lang/String; = "subModel"

.field private static final y:Ljava/lang/String; = "voiceField"

.field private static final z:Ljava/lang/String; = "lang"


# instance fields
.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/lang/StringBuffer;

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x3e80

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lcom/unisound/sdk/i;->I:Z

    iput v2, p0, Lcom/unisound/sdk/i;->J:I

    iput-boolean v1, p0, Lcom/unisound/sdk/i;->K:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/i;->L:Z

    const-string v0, "near"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/unisound/sdk/i;->a(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->d(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->f(Ljava/lang/String;)V

    const-string v0, "json"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/i;->I:Z

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unisound/sdk/i;->I:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/unisound/sdk/i;->I:Z

    iget-object v0, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "lang"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/i;->K:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/i;->K:Z

    return v0
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/sdk/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setSampleRate param error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/unisound/sdk/i;->b()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/unisound/sdk/i;->d()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/unisound/sdk/i;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_1
        0x13880 -> :sswitch_2
    .end sparse-switch
.end method

.method public b()V
    .locals 1

    const-string v0, "16kto8k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->e(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/unisound/sdk/i;->J:I

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "false_alarm"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/i;->L:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "modelType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    const-string v0, "8k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->e(Ljava/lang/String;)V

    const v0, 0x13880

    iput v0, p0, Lcom/unisound/sdk/i;->J:I

    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "domains_penalty"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "subModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    const/4 v0, 0x1

    return v0
.end method

.method public c(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/i;->L:Z

    return v0
.end method

.method public d()V
    .locals 1

    const-string v0, "16k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/i;->e(Ljava/lang/String;)V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/unisound/sdk/i;->J:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "voiceField"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "oneshot"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "sampleRate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "alread_awpe"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/i;->J:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "oneshot_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public f(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "serverVad"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "textFormat"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "punctuated"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "SGN_Setting"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public h(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "best_result_return"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/i;->G:Ljava/util/Map;

    const-string v1, "productLine"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/i;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/i;->h()V

    iget-object v0, p0, Lcom/unisound/sdk/i;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
