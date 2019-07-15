.class Lcom/unisound/vui/engine/NativeANTEngine$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/engine/NativeANTEngine;->updateWakeupWord1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/unisound/vui/engine/NativeANTEngine;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$4;->b:Lcom/unisound/vui/engine/NativeANTEngine;

    iput-object p2, p0, Lcom/unisound/vui/engine/NativeANTEngine$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$4;->b:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/a;->a(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method
