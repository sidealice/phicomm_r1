.class public abstract Lcom/unisound/vui/common/a/b;
.super Ljava/lang/Object;


# instance fields
.field private wakeUpWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/a/b;->wakeUpWords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearWakeUpWords()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/a/b;->wakeUpWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getWakeUpWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/common/a/b;->wakeUpWords:Ljava/util/List;

    return-object v0
.end method

.method public setWakeUpWords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeUpWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/vui/common/a/b;->wakeUpWords:Ljava/util/List;

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
