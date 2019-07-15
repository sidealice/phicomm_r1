.class Lme/shaohui/advancedluban/a$3;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/a;->a(Lme/shaohui/advancedluban/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lme/shaohui/advancedluban/d;

.field final synthetic b:Lme/shaohui/advancedluban/a;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/d;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lme/shaohui/advancedluban/a$3;->b:Lme/shaohui/advancedluban/a;

    iput-object p2, p0, Lme/shaohui/advancedluban/a$3;->a:Lme/shaohui/advancedluban/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lme/shaohui/advancedluban/a$3;->a:Lme/shaohui/advancedluban/d;

    invoke-interface {p1}, Lme/shaohui/advancedluban/d;->onStart()V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/shaohui/advancedluban/a$3;->a(Ljava/lang/Long;)V

    return-void
.end method
