.class Lcom/unisound/vui/common/network/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/vui/common/network/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/common/network/d;

.field final synthetic b:Lcom/unisound/vui/common/network/e;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/common/network/e$5;->b:Lcom/unisound/vui/common/network/e;

    iput-object p2, p0, Lcom/unisound/vui/common/network/e$5;->a:Lcom/unisound/vui/common/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    const-string v0, "VolleyUtils"

    const-string v1, "downloadFile success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/network/e$5;->a:Lcom/unisound/vui/common/network/d;

    invoke-interface {v0, p1}, Lcom/unisound/vui/common/network/d;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/unisound/vui/common/network/e$5;->a([B)V

    return-void
.end method
