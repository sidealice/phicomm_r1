.class Lcom/unisound/vui/common/network/e$4;
.super Lcom/android/volley/toolbox/StringRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/unisound/vui/common/network/e;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/network/e;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;[B)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/common/network/e$4;->b:Lcom/unisound/vui/common/network/e;

    iput-object p6, p0, Lcom/unisound/vui/common/network/e$4;->a:[B

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/network/e$4;->a:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "encodeType"

    const-string v2, "add_base64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
