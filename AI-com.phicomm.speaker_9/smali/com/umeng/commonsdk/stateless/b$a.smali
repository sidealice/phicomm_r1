.class Lcom/umeng/commonsdk/stateless/b$a;
.super Lcom/umeng/commonsdk/proguard/au;
.source "UMSLEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/au<",
        "Lcom/umeng/commonsdk/stateless/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/au;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/stateless/b$1;)V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 736
    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/stateless/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 741
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->j()Lcom/umeng/commonsdk/proguard/ap;

    .line 743
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->l()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    .line 744
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-nez v1, :cond_3

    .line 833
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->k()V

    .line 837
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->m()Z

    move-result p1

    if-nez p1, :cond_0

    .line 838
    new-instance p1, Lcom/umeng/commonsdk/proguard/al;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw p1

    .line 841
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->p()Z

    move-result p1

    if-nez p1, :cond_1

    .line 842
    new-instance p1, Lcom/umeng/commonsdk/proguard/al;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->s()Z

    move-result p1

    if-nez p1, :cond_2

    .line 846
    new-instance p1, Lcom/umeng/commonsdk/proguard/al;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    return-void

    .line 747
    :cond_3
    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/af;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 829
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 821
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v2, :cond_4

    .line 822
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    .line 823
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    goto/16 :goto_1

    .line 825
    :cond_4
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 813
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_5

    .line 814
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    .line 815
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->i(Z)V

    goto/16 :goto_1

    .line 817
    :cond_5
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 805
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_6

    .line 806
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    .line 807
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->h(Z)V

    goto/16 :goto_1

    .line 809
    :cond_6
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 797
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_7

    .line 798
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    .line 799
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->g(Z)V

    goto/16 :goto_1

    .line 801
    :cond_7
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 789
    :pswitch_4
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v2, :cond_8

    .line 790
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    .line 791
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    goto/16 :goto_1

    .line 793
    :cond_8
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 781
    :pswitch_5
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v2, :cond_9

    .line 782
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    .line 783
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    goto :goto_1

    .line 785
    :cond_9
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 773
    :pswitch_6
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v2, :cond_a

    .line 774
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    .line 775
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    goto :goto_1

    .line 777
    :cond_a
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 765
    :pswitch_7
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_b

    .line 766
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    .line 767
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->c(Z)V

    goto :goto_1

    .line 769
    :cond_b
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 757
    :pswitch_8
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_c

    .line 758
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    .line 759
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->b(Z)V

    goto :goto_1

    .line 761
    :cond_c
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 749
    :pswitch_9
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-ne v1, v3, :cond_d

    .line 750
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    .line 751
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->a(Z)V

    goto :goto_1

    .line 753
    :cond_d
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    .line 831
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 736
    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/stateless/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 854
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    .line 856
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->H()Lcom/umeng/commonsdk/proguard/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ap;)V

    .line 857
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 858
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->I()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 859
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 862
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 863
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->J()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 864
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 867
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 868
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->K()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 869
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 872
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->L()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 873
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(I)V

    .line 874
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 875
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->M()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 876
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(I)V

    .line 877
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 878
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->N()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 879
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(I)V

    .line 880
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 881
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 882
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->O()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 883
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/nio/ByteBuffer;)V

    .line 884
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 886
    :cond_3
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 887
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->P()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 888
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 891
    :cond_4
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 892
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->Q()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 893
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 896
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 897
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->R()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 898
    iget p2, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/ak;->a(I)V

    .line 899
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 901
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->d()V

    .line 902
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->b()V

    return-void
.end method
