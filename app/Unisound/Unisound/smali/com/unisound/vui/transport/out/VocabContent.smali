.class public Lcom/unisound/vui/transport/out/VocabContent;
.super Ljava/lang/Object;


# instance fields
.field private grammarTag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "grammarTag"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grammarTag"
    .end annotation
.end field

.field private vocabContent:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "vocabContent"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vocabContent"
    .end annotation

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p2, "grammarTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "vocabContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/transport/out/VocabContent;->vocabContent:Ljava/util/Map;

    iput-object p2, p0, Lcom/unisound/vui/transport/out/VocabContent;->grammarTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGrammarTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/VocabContent;->grammarTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVocabContent()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/unisound/vui/transport/out/VocabContent;->vocabContent:Ljava/util/Map;

    return-object v0
.end method

.method public setGrammarTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "grammarTag"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/VocabContent;->grammarTag:Ljava/lang/String;

    return-void
.end method

.method public setVocabContent(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "vocabContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/unisound/vui/transport/out/VocabContent;->vocabContent:Ljava/util/Map;

    return-void
.end method
