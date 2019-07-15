.class Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "DiskLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/logger/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# instance fields
.field private final folder:Ljava/lang/String;

.field private final maxFileSize:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "maxFileSize"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    iput-object p2, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    .line 40
    return-void
.end method

.method private deleteLogFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "i":I
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v8, "%s_%s.csv"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v5, "tmpFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    new-instance v5, Ljava/io/File;

    .end local v5    # "tmpFile":Ljava/io/File;
    iget-object v7, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v8, "%s_%s.csv"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "tmpFile":Ljava/io/File;
    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v7, v0, -0x8

    if-ge v2, v7, :cond_2

    .line 92
    new-instance v1, Ljava/io/File;

    const-string v7, "%s_%s.csv"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v1, "deleteFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "deleteFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    .line 99
    .local v3, "j":I
    add-int/lit8 v2, v0, -0x8

    :goto_2
    if-ge v2, v0, :cond_4

    .line 100
    new-instance v6, Ljava/io/File;

    const-string v7, "%s_%s.csv"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v6, "toBeRenameFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "%s_%s.csv"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v4, "newFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    invoke-virtual {v6, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 99
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v4    # "newFile":Ljava/io/File;
    .end local v6    # "toBeRenameFile":Ljava/io/File;
    :cond_4
    return-void
.end method

.method private getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, "newFileCount":I
    const/4 v0, 0x0

    .line 122
    .local v0, "existingFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "%s_%s.csv"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v2, "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    move-object v0, v2

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 127
    const/16 v4, 0x28

    if-le v3, v4, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->deleteLogFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 131
    const/4 v3, 0x0

    .line 134
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    const-string v4, "%s_%s.csv"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "newFile":Ljava/io/File;
    goto :goto_0

    .line 137
    :cond_2
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 144
    .end local v2    # "newFile":Ljava/io/File;
    :cond_3
    :goto_1
    return-object v2

    .restart local v2    # "newFile":Ljava/io/File;
    :cond_4
    move-object v2, v0

    .line 141
    goto :goto_1
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileWriter"    # Ljava/io/FileWriter;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "fileWriter":Ljava/io/FileWriter;
    iget-object v5, p0, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v6, "logs"

    invoke-direct {p0, v5, v6}, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 50
    .local v4, "logFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-direct {p0, v3, v0}, Lcom/phicomm/speaker/player/logger/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 55
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 64
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v2, :cond_0

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 60
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v5

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1
.end method
