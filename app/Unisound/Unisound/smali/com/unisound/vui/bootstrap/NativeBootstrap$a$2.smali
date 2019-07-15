.class Lcom/unisound/vui/bootstrap/NativeBootstrap$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;",
        "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;


# direct methods
.method constructor <init>(Lcom/unisound/vui/bootstrap/NativeBootstrap$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$2;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 1

    invoke-virtual {p1}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->copyJsgfFromAssets()V

    invoke-virtual {p1}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getConfig()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$2;->a(Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v0

    return-object v0
.end method
