.class public Lcom/unisound/vui/engine/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/ANTEngineConfig;


# static fields
.field private static final c:Lcom/unisound/vui/transport/MessageCodec;


# instance fields
.field protected final a:Lcom/unisound/vui/engine/ANTEngine;

.field protected final b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

.field private volatile d:Lcom/unisound/vui/transport/MessageCodec;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/transport/DefaultMessageCodec;

    invoke-direct {v0}, Lcom/unisound/vui/transport/DefaultMessageCodec;-><init>()V

    sput-object v0, Lcom/unisound/vui/engine/b;->c:Lcom/unisound/vui/transport/MessageCodec;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unisound/vui/engine/b;->c:Lcom/unisound/vui/transport/MessageCodec;

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->d:Lcom/unisound/vui/transport/MessageCodec;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/engine/b;->k:Z

    const-string v0, "antEngine"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/unisound/vui/engine/b;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/unisound/vui/engine/b;
    .locals 2

    iput-object p1, p0, Lcom/unisound/vui/engine/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    iget-object v1, p0, Lcom/unisound/vui/engine/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setMainTag(Ljava/lang/String;)V

    return-object p0
.end method

.method protected a(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "option"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/unisound/vui/engine/ANTEngineOption;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/unisound/vui/engine/b;
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->f:Ljava/lang/String;

    const-string v1, "wakeupTag"

    invoke-static {v0, p1, v1}, Lcom/unisound/vui/engine/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/unisound/vui/engine/b;
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->g:Ljava/lang/String;

    const-string v1, "wakeupOneshotTag"

    invoke-static {v0, p1, v1}, Lcom/unisound/vui/engine/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalConfiguration()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->i:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object v0
.end method

.method public getMainTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMainVocab()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->j:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageCodec()Lcom/unisound/vui/transport/MessageCodec;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->d:Lcom/unisound/vui/transport/MessageCodec;

    return-object v0
.end method

.method public getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "option":Lcom/unisound/vui/engine/ANTEngineOption;, "Lcom/unisound/vui/engine/ANTEngineOption<TT;>;"
    const/16 v2, 0x3f3

    const/16 v1, 0x3f2

    const-string v0, "option"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->MAIN_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/b;->getMainTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/b;->getWakeupTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_ONESHOT_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/unisound/vui/engine/b;->getWakeupOneshotTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->MESSAGE_CODEC:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/unisound/vui/engine/b;->getMessageCodec()Lcom/unisound/vui/transport/MessageCodec;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UPDATE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x415

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_TIMEOUT_STATUS:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x436

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_SAMPLING_RATE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x414

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_DOMAIN:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VOICE_FIELD:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3eb

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_LANGUAGE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3ec

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_FRONTSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_BACKSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_NET_TIMEOUT:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f6

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_OPT_THRESHOLD_VALUE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0xc4e

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_ENABLE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3fc

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_SCENARIO:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3fd

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_HISTORY:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x406

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_CITY:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x407

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_VOICEID:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x408

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_SCENE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43a

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_SUBDOMAIN:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43f

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_FRONTSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_BACKSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_DOA_RESULT:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x27d4

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_BOARD_VERSION:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x27d5

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_CLOSE_4MICALGORITHM:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x2774

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x40c

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/unisound/vui/engine/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getWakeupOneshotTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isPrintEngineLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/b;->k:Z

    return v0
.end method

.method public setLocalConfiguration(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 0
    .param p1, "localConfiguration"    # Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/engine/b;->i:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object p0
.end method

.method public synthetic setMainTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/b;->a(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    move-result-object v0

    return-object v0
.end method

.method public setMainVocab(Ljava/util/Map;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unisound/vui/engine/ANTEngineConfig;"
        }
    .end annotation

    .prologue
    .local p1, "mainVocab":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/b;->j:Ljava/util/Map;

    const-string v1, "mainVocab"

    invoke-static {v0, p1, v1}, Lcom/unisound/vui/engine/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->j:Ljava/util/Map;

    return-object p0
.end method

.method public setMessageCodec(Lcom/unisound/vui/transport/MessageCodec;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 2
    .param p1, "messageCodec"    # Lcom/unisound/vui/transport/MessageCodec;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "messageCodec"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/unisound/vui/engine/b;->d:Lcom/unisound/vui/transport/MessageCodec;

    return-object p0
.end method

.method public setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "option":Lcom/unisound/vui/engine/ANTEngineOption;, "Lcom/unisound/vui/engine/ANTEngineOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/engine/b;->a(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)V

    const-string v0, "NativeANTEngineConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==>>setOption option:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->MAIN_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/unisound/vui/engine/b;->a(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/unisound/vui/engine/b;->b(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_ONESHOT_TAG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/unisound/vui/engine/b;->c(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->MESSAGE_CODEC:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_4

    check-cast p2, Lcom/unisound/vui/transport/MessageCodec;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/unisound/vui/engine/b;->setMessageCodec(Lcom/unisound/vui/transport/MessageCodec;)Lcom/unisound/vui/engine/ANTEngineConfig;

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_SAMPLING_RATE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x414

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_DOMAIN:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f0

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VOICE_FIELD:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3eb

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_LANGUAGE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3ec

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_NET_TIMEOUT:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f6

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UPDATE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x415

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_FRONT_CACHE_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x424

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_VAD_ENABLED:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x425

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_OPT_THRESHOLD_VALUE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0xc4e

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_ENABLE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3fc

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_SCENARIO:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3fd

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_GPS:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x409

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_HISTORY:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x406

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_CITY:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x407

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_VOICEID:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x408

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_VER:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x400

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_APPVER:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x401

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_FRONT_RESET_CACHE_BYTE_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x42e

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_DEBUG_SAVELOG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x42f

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_DEBUG_POSTLOG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x430

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_SAVE_AFTERVAD_RECORDING_DATA:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x432

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_ONESHOT_VADBACKSIL_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x439

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_SCENE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43a

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isModeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NativeANTEngineConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR_OPT_RECOGNIZE_MODEL_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43b

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WAKEUP_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isModeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NativeANTEngineConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR_OPT_WAKEUP_MODEL_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43c

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_ALREAD_AWPE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43d

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_SUBDOMAIN:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x43f

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RESULT_FILTER:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x41b

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_20
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECORDING_ENABLED:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x41d

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x41e

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_22
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_TIME_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_23

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x427

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_23
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_SAVE_RECORDING_DATA:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x422

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_24
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_FRONTSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f2

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_25
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_BACKSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x3f3

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_26
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x27d7

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_27
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_ISDEBUG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x27d6

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_28
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_CHANGE_CHANNEL:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_29

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x27d2

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_29
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_CLOSE_4MICALGORITHM:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x2774

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2a
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->OPT_SET_FIX_RESULT_NLU:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2b
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->OPT_SET_FIX_RESULT_NLU_CONFIGPATH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2c
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_ENGINE_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x426

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2d
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_SPEED:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2e

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7d1

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2e
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_PITCH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_2f

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7d2

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2f
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7d3

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_30
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_NAME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7d5

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_31
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_PLAY_START_BUFFER_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7dc

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_32
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_SAMPLE_RATE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7d4

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_33
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_STREAM_TYPE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_34

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7dd

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_34
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_SERVICE_MODE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7e4

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_35
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_IS_DEBUG:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7de

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_36
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_IS_READ_ENLISH_IN_PINYIN:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_37

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7e5

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_37
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_FRONT_SILENCE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_38

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7e6

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_38
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACK_SILENCE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_39

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7e7

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_39
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_IS_URGENT_AUDIO:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3a

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7e8

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3a
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_FRONTEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3b

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7ee

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3b
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3c

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7ef

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3c
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_SWITCH_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3d

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7f0

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3d
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_USER_DICT_FILE_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3e

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x7f3

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3e
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WX_SERVICE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_3f

    const-string v0, "NativeANTEngineConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR_OPT_WX_SERVICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x447

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3f
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_SUB_SERVICE_PARAM:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_40

    const-string v0, "NativeANTEngineConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR_OPT_SUB_SERVICE_PARAM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x449

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_40
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNITION_FRONT_VAD:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x437

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_41
    sget-object v0, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_TEMP_RESULT_ENABLE:Lcom/unisound/vui/engine/ANTEngineOption;

    if-ne p1, v0, :cond_42

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x434

    invoke-interface {v0, v1, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_42
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public setOptions(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lcom/unisound/vui/engine/ANTEngineOption<*>;*>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/engine/b;->h:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;

    invoke-direct {v0}, Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;->options()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/b;->h:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/unisound/vui/engine/b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/unisound/vui/engine/b;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public setPrintEngineLog(Z)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 3
    .param p1, "printEngineLog"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/engine/b;->k:Z

    iget-object v0, p0, Lcom/unisound/vui/engine/b;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    const/16 v1, 0x426

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    return-object p0
.end method

.method public synthetic setWakeupOneshotTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/b;->c(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setWakeupTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/b;->b(Ljava/lang/String;)Lcom/unisound/vui/engine/b;

    move-result-object v0

    return-object v0
.end method
