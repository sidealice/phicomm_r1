.class public Lcom/unisound/lib/music/bean/SingerBean;
.super Ljava/lang/Object;
.source "SingerBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;
    }
.end annotation


# instance fields
.field private singerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSingerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/unisound/lib/music/bean/SingerBean;->singerList:Ljava/util/List;

    return-object v0
.end method

.method public setSingerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/unisound/lib/music/bean/SingerBean;->singerList:Ljava/util/List;

    return-void
.end method
