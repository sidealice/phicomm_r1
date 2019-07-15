.class final Lcom/unisound/vui/util/internal/d$3;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/unisound/vui/util/internal/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/unisound/vui/util/internal/d;
    .locals 1

    new-instance v0, Lcom/unisound/vui/util/internal/d;

    invoke-direct {v0}, Lcom/unisound/vui/util/internal/d;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/util/internal/d$3;->a()Lcom/unisound/vui/util/internal/d;

    move-result-object v0

    return-object v0
.end method
