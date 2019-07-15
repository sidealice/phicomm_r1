.class public Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;
.super Landroid/content/ContentProvider;
.source "SharedPreferenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;
    }
.end annotation


# instance fields
.field private methodContainKey:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

.field private methodEditor:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

.field private methodQueryPid:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

.field private methodQueryValues:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

.field private processerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$1;-><init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodQueryPid:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    .line 76
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$2;-><init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodQueryValues:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    .line 127
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$3;-><init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodContainKey:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    .line 144
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;-><init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodEditor:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    .line 60
    .local v0, "processer":Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;->process(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    const-string v1, "method_query_value"

    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodQueryValues:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    const-string v1, "method_contain_key"

    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodContainKey:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    const-string v1, "method_edit"

    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodEditor:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->processerMap:Ljava/util/Map;

    const-string v1, "method_query_pid"

    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->methodQueryPid:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
