.class public Lcom/phicomm/speaker/net/resultbean/GroupPic;
.super Ljava/lang/Object;
.source "GroupPic.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;
    }
.end annotation


# instance fields
.field private group_pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;",
            ">;"
        }
    .end annotation
.end field

.field private pic_group_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup_pics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->group_pics:Ljava/util/List;

    return-object v0
.end method

.method public getPic_group_id()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->pic_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup_pics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->group_pics:Ljava/util/List;

    return-void
.end method

.method public setPic_group_id(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->pic_group_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupPic{pic_group_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->pic_group_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", group_pics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/GroupPic;->group_pics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
