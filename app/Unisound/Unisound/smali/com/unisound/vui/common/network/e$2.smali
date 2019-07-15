.class Lcom/unisound/vui/common/network/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/common/network/d;

.field final synthetic b:Lcom/unisound/vui/common/network/e;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/network/e;Lcom/unisound/vui/common/network/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/common/network/e$2;->b:Lcom/unisound/vui/common/network/e;

    iput-object p2, p0, Lcom/unisound/vui/common/network/e$2;->a:Lcom/unisound/vui/common/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VolleyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryString response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/network/e$2;->a:Lcom/unisound/vui/common/network/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/network/e$2;->a:Lcom/unisound/vui/common/network/d;

    invoke-interface {v0, p1}, Lcom/unisound/vui/common/network/d;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/common/network/e$2;->a(Ljava/lang/String;)V

    return-void
.end method
