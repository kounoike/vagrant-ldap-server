# ����͂ȂɁH

OpenLDAP�̃_���_���ݒ�̃_�����Ղ������Vagrant�ꎮ�ł��B

# �ǂ�����Ď����́H

## ������

* `berks vendor`����berks-cookbooks�f�B���N�g�����擾���A`vagrant up`�ō\�z���܂��ihashicorp/precise32�������ĂȂ��Ǝ��Ԃ�������܂��^�K����ubuntu box�ɍ����ւ��Ă����v���Ǝv���܂��j�B
* `vagrant ssh`����box�̒��ɓ���A`sh /vagrant/ldap_setup.sh`����LDAP�̃f�[�^�x�[�X���\�z���܂��B

## �m�F��

* `vagrant ssh -- -l user1`�Ńp�X���[�huser1����͂��܂��B
* `id`�R�}���h��uid=2000, gid=2000�Ȃ��Ƃ��m�F���܂��B
* �������Ƃ�user2/user2�ł���āAuid=2001, gid=2001�Ȃ��Ƃ��m�F���܂��B

## �ݒ�ύX

* `vagrant ssh`�ōĂ�vagrant���[�U�Ń��O�C�����܂��B
* `sudo sh /vagrant/ldap_change_setting.sh`����LDAP�̐ݒ�ɓł��d���݂܂��islapd���ċN�����܂��j�B

## �U���J�n

* `vagrant ssh -- -l user1`�Łi�p�X���[�huser1�Łj�ēx���O�C�����܂��B
* `sh /vagrant/ldap_attack.sh`�ōU�����܂��B
* ��x���O�A�E�g���čēx���O�C�����܂��B
* `id`�R�}���h�����ċ����Ă��������B

# ��������Ă���́H

�I舂�access to * by self write�ݒ�ɂ��A�������g�̐ݒ��������������LDAP�T�[�o�ɑ΂��āA
�uuid��0�ɂ��ĉ������v�Ƃ��肢���邱�Ƃɂ��A�����̃��[�J�����[�U������������root������t�^����
������Ă��܂��B

# �ǂ��ݒ肷��΂悢�́H

�I舂�access to * by self write�����Ȃ���Ηǂ��̂ł��BuidNumber, gidNumber�Ȃǂ̏���ɕς��Ă͂܂���������
�ʂ�ACL�ŕی삵�Ă���access to * by self write������Ƃ�����Ηǂ��ł��傤�B

# ������m���Ă����́H

�x���Ƃ�2006�N�ɂ͒m���Ă����̂ł����A�Č��������J����̂�����������ߖق��Ă��܂����BJP-CERT�ɖ₢���킹�Ă�
���Ё^Web�̐ݒ��͊Ǌ��O�Ƃ̂��ƂŎ�舵���Ă��炦�܂���ł������B

# �ǂ����č����J�����́H

Vagrant�ŊȒP�ɍČ��������J�ł���悤�ɂȂ����̂ƁA�_���_���Ȑݒ���܂����ꗬ���Ă鏑�Ё^Web�����邩��ł��B
