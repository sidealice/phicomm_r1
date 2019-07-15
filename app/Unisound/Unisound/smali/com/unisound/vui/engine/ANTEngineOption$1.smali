.class final Lcom/unisound/vui/engine/ANTEngineOption$1;
.super Lcom/unisound/vui/util/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/ANTEngineOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/util/c",
        "<",
        "Lcom/unisound/vui/engine/ANTEngineOption",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/util/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTEngineOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/vui/engine/ANTEngineOption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/unisound/vui/engine/ANTEngineOption;-><init>(ILjava/lang/String;Lcom/unisound/vui/engine/ANTEngineOption$1;)V

    return-object v0
.end method

.method protected synthetic b(ILjava/lang/String;)Lcom/unisound/vui/util/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/engine/ANTEngineOption$1;->a(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTEngineOption;

    move-result-object v0

    return-object v0
.end method
