.class public Lcom/unisound/vui/bootstrap/DefaultANTEMainVocabProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainVocab(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/unisound/vui/util/LocalizeDataUtil;->newInstance(Landroid/content/Context;)Lcom/unisound/vui/util/LocalizeDataUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/util/LocalizeDataUtil;->getUserDef()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/unisound/vui/util/entity/VocabSlotTag;->Domain_userdef_commands_slot:Lcom/unisound/vui/util/entity/VocabSlotTag;

    invoke-virtual {v2}, Lcom/unisound/vui/util/entity/VocabSlotTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getOneshotEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/unisound/vui/util/entity/VocabSlotTag;->Domain_wakeup_words_slot:Lcom/unisound/vui/util/entity/VocabSlotTag;

    invoke-virtual {v2}, Lcom/unisound/vui/util/entity/VocabSlotTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
