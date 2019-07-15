.class Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$1;
.super Ljava/lang/Object;
.source "SharedPreferenceProvider.java"

# interfaces
.implements Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$1;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_result"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-object v0
.end method
