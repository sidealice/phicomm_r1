.class Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$3;
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
    .line 127
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$3;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "methodQueryValues, extras is null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$3;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 135
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "methodQueryValues, ctx is null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_1
    const-string v3, "key_key"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "key_result"

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-object p2
.end method
