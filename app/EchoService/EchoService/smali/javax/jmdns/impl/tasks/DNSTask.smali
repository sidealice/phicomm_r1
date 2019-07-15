.class public abstract Ljavax/jmdns/impl/tasks/DNSTask;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 32
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 33
    return-void
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v5, p1

    .line 206
    .local v5, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-object v5

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 209
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 210
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 211
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 213
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 214
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 215
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 217
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 218
    .restart local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v5, p1

    .line 113
    .local v5, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v5

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 116
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 117
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 118
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 120
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 121
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 122
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 124
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 125
    .restart local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v5, p1

    .line 144
    .local v5, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v5

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 147
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 148
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 149
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 151
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 152
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 153
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 155
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 156
    .restart local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_0
.end method

.method public addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v5, p1

    .line 174
    .local v5, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object v5

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 177
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 178
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 179
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 181
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 182
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 183
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 185
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 186
    .restart local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSQuestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v5, p1

    .line 81
    .local v5, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v5

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 84
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 85
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 86
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 88
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 89
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 90
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 92
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 93
    .restart local v5    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract start(Ljava/util/Timer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
