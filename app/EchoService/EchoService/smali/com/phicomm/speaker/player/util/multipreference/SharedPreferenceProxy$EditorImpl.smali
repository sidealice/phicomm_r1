.class public Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferenceProxy.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorImpl"
.end annotation


# instance fields
.field private mModified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phicomm/speaker/player/util/multipreference/OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->mModified:Ljava/util/ArrayList;

    return-void
.end method

.method private addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "op"    # Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->mModified:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    monitor-exit p0

    return-object p0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private convertBundleList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->mModified:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v3, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->mModified:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    .line 215
    .local v1, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1    # "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 217
    .restart local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 6

    .prologue
    .line 194
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v1, "intput":Landroid/os/Bundle;
    const-string v2, "key_result"

    invoke-direct {p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->convertBundleList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    const-string v2, "key_op_type"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->access$100(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v4, "method_edit"

    iget-object v5, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    invoke-static {v5}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->access$000(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainClear()Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "input":Landroid/os/Bundle;
    const-string v4, "key_result"

    invoke-direct {p0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->convertBundleList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    const-string v4, "key_op_type"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, "res":Landroid/os/Bundle;
    :try_start_0
    iget-object v4, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    invoke-static {v4}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->access$100(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/phicomm/speaker/player/util/multipreference/PreferenceUtil;->URI:Landroid/net/Uri;

    const-string v6, "method_edit"

    iget-object v7, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;

    invoke-static {v7}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;->access$000(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    :goto_0
    if-nez v2, :cond_0

    .line 189
    :goto_1
    return v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "key_result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 160
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setBooleanValue(Z)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 161
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 154
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setFloatValue(F)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 155
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 142
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setIntValue(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 143
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 148
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setLongValue(J)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 149
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setStringValue(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 131
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setStringSettingsValue(Ljava/util/Set;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 137
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->obtainRemoveOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    .line 167
    .local v0, "entry":Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProxy$EditorImpl;->addOps(Lcom/phicomm/speaker/player/util/multipreference/OpEntry;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method
