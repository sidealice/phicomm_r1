.class Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;
.super Ljava/lang/Object;
.source "JmdnsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->tearDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-static {v3}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$000(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-static {v3}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-static {v3}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v2, "jmDNS":Ljavax/jmdns/JmDNS;
    :try_start_1
    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v5, "Unregistered all services "

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 150
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "jmDNS":Ljavax/jmdns/JmDNS;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 143
    .restart local v1    # "iterator":Ljava/util/Iterator;
    .restart local v2    # "jmDNS":Ljavax/jmdns/JmDNS;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "jmDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$002(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;Z)Z

    .line 150
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v1    # "iterator":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "mDNS services already unregistered"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method
